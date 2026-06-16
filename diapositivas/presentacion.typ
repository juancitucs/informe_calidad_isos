#import "@preview/touying:0.6.1": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#let fletcher-diagram = touying-reducer.with(reduce: fletcher.diagram, cover: fletcher.hide)

#set text(font: "Fira Sans", size: 13pt, fill: rgb("#f0f0f0"))
#show raw: set text(font: "Fira Code", size: 11pt)

#show: touying-slides.with(
  config-page(fill: rgb("#0f0f14")),
  config-info(
    title: [ISO/IEC 27001:2022],
    subtitle: [Controles 8.25, 8.28 y 8.29],
    author: [Equipo 5 --- IS-722],
  ),
)

#let accent = rgb("#e94560")
#let accent2 = rgb("#0f3460")
#let accent3 = rgb("#533483")
#let warm = rgb("#e8a87c")
#let cool = rgb("#41aea9")
#let light = rgb("#f0f0f0")
#let muted = rgb("#9ca3af")
#let card-dark = rgb("#1e1e2e")
#let card-darker = rgb("#14141f")

= Portada

== ISO/IEC 27001:2022

#align(center + horizon)[
  #block(inset: (x: 3em, y: 2em), fill: card-dark, radius: 4pt, stroke: (left: 4pt + accent))[
    #text(42pt, weight: "bold", fill: light)[ISO/IEC 27001:2022]
    #v(0.4cm)
    #text(18pt, fill: muted)[Controles 8.25, 8.28 y 8.29]
    #v(1.2cm)
    #text(14pt, fill: accent)[Equipo 5]
    #text(14pt, fill: muted)[ --- IS-722 Calidad de Software]
    #v(0.3cm)
    #text(12pt, fill: rgb("#6b7280"))[Universidad Nacional de Moquegua --- 2026-I]
  ]
]

= ISO/IEC 27001:2022

== Visión General

#grid(
  columns: (1.6fr, 1fr),
  column-gutter: 1.2cm,
)[
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + accent))[
    #text(11pt, fill: light)[La norma *ISO/IEC 27001:2022* establece los requisitos para un *Sistema de Gestión de Seguridad de la Información (SGSI)*. Referencia mundial para proteger confidencialidad, integridad y disponibilidad.]
    #v(0.4cm)
    #text(11pt, fill: accent)[Anexo A --- Controles tecnológicos]
    #v(0.2cm)
    #text(10pt, fill: muted)[- 93 controles en 4 temas
      - *A.8:* 34 controles tecnológicos
      - Los más relevantes: *8.25, 8.28 y 8.29*
      - Cluster que cubre todo el ciclo de vida del desarrollo seguro]
  ]
][
  #align(center + horizon)[
    #block(inset: 1.5em, fill: accent2, radius: 4pt, width: 100%)[
      #text(28pt, weight: "bold", fill: light)[SGSI]
      #v(0.3cm)
      #text(12pt, fill: rgb("#93c5fd"))[Sistema de Gestión de Seguridad de la Información]
    ]
  ]
]

= Los 3 Controles

== Los 3 Controles Tecnológicos

#block(width: 100%, inset: 1em, fill: card-darker, radius: 4pt, stroke: (left: 3pt + accent))[
  #text(11pt, fill: muted)[El control *8.25* establece las reglas generales. El *8.28* se enfoca en el código. El *8.29* verifica antes de producción.]
]

#v(0.5cm)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.8cm,
)[
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (top: 3pt + accent))[
    #text(30pt, weight: "bold", fill: accent)[8.25]
    #v(0.1cm)
    #text(12pt, weight: "bold", fill: light)[Secure Development Life Cycle]
    #v(0.2cm)
    #text(10pt, fill: muted)[Reglas para desarrollo seguro durante todo el ciclo de vida. Separación de entornos, control de versiones y competencia del equipo.]
  ]
][
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (top: 3pt + cool))[
    #text(30pt, weight: "bold", fill: cool)[8.28]
    #v(0.1cm)
    #text(12pt, weight: "bold", fill: light)[Secure Coding]
    #v(0.2cm)
    #text(10pt, fill: muted)[Principios de codificación segura. Validación, secretos, mínimo privilegio, dependencias, errores.]
  ]
][
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (top: 3pt + warm))[
    #text(30pt, weight: "bold", fill: warm)[8.29]
    #v(0.1cm)
    #text(12pt, weight: "bold", fill: light)[Security Testing]
    #v(0.2cm)
    #text(10pt, fill: muted)[Pruebas durante desarrollo y antes de producción. SAST, DAST, revisiones, acceptance testing.]
  ]
]

= SSDLC (8.25)

== Qué es un SSDLC

#block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + accent3))[
  #text(13pt, fill: light)[Un *Secure SDLC* integra seguridad en cada fase. Concepto clave: *Shift Left* --- mover seguridad hacia fases iniciales.]
]

#v(0.4cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 1em, fill: card-darker, radius: 4pt, stroke: (left: 3pt + rgb("#ef4444")))[
    #text(12pt, weight: "bold", fill: rgb("#fca5a5"))[Modelo tradicional]
    #v(0.2cm)
    #text(10pt, fill: muted)[- Seguridad al *final* del proyecto
      - Vulnerabilidades detectadas tarde
      - Costo alto
      - Más componentes afectados]
  ]
][
  #block(width: 100%, inset: 1em, fill: card-darker, radius: 4pt, stroke: (left: 3pt + rgb("#22c55e")))[
    #text(12pt, weight: "bold", fill: rgb("#86efac"))[SSDLC --- Shift Left]
    #v(0.2cm)
    #text(10pt, fill: muted)[- Seguridad desde *Requisitos*
      - Threat modeling en diseño
      - Codificación segura
      - Pruebas en CI/CD
      - Hardening en despliegue]
  ]
]

== Diagrama SSDLC

#align(center + horizon)[
  #block(width: 85%, inset: 0.8em, fill: card-darker, radius: 4pt)[
    #text(11pt, fill: muted)[El SSDLC integra seguridad en 6 fases. Las fases 3 y 4 se vinculan con *8.28* y *8.29*.]
  ]

  #v(0.5cm)

  #fletcher-diagram(
    spacing: (2.5em, 1.5em),
    node-stroke: 1.5pt,
    node-inset: 0.8em,
    edge-stroke: 1.5pt,
    node-fill: card-dark,
    node((0, 0), [#text(10pt, weight: "bold", fill: light)[Requisitos]], shape: "circle", radius: 2em),
    edge((0, 0), (1, 0), "->"),
    node((1, 0), [#text(10pt, weight: "bold", fill: light)[Diseño]], shape: "circle", radius: 2em),
    edge((1, 0), (2, 0), "->"),
    node((2, 0), [#text(10pt, weight: "bold", fill: light)[Desarrollo] \ #text(8pt, fill: cool)[8.28]], shape: "circle", radius: 2em, fill: accent2),
    edge((2, 0), (3, 0), "->"),
    node((3, 0), [#text(10pt, weight: "bold", fill: light)[Pruebas] \ #text(8pt, fill: warm)[8.29]], shape: "circle", radius: 2em, fill: accent3),
    edge((3, 0), (4, 0), "->"),
    node((4, 0), [#text(10pt, weight: "bold", fill: light)[Despliegue]], shape: "circle", radius: 2em),
    edge((4, 0), (5, 0), "->"),
    node((5, 0), [#text(10pt, weight: "bold", fill: light)[Mant.]], shape: "circle", radius: 2em),
  )

  #v(0.3cm)

  #text(9pt, fill: rgb("#6b7280"))[Todos bajo el control *8.25*.]
]

== Fases 1-2: Requisitos y Diseño

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + accent))[
    #text(12pt, weight: "bold", fill: accent)[Fase 1 --- Requisitos]
    #v(0.2cm)
    #text(10pt, fill: light)[
      *Activos:* BD, credenciales, código, registros.
      *Clasificación:* Pública, Interna, Confidencial, Restringida.
      *CIA + Trazabilidad:*
      - *Confidencialidad:*
      - *Integridad:*
      - *Disponibilidad:*
      - *Trazabilidad:*
    ]
  ]
][
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + cool))[
    #text(12pt, weight: "bold", fill: cool)[Fase 2 --- Diseño Seguro]
    #v(0.2cm)
    #text(10pt, fill: light)[
      *Threat Modeling (STRIDE):* Identificar amenazas.
      *DFD:* Procesos, flujos, almacenes, entidades.
      *Límites de confianza:* Cada frontera requiere controles.
      *Controles:* Validación, autorización, logging, sesiones.
    ]
  ]
]

== Fase 3: Desarrollo Seguro (8.28)

#block(width: 100%, inset: 0.8em, fill: accent2, radius: 4pt)[
  #text(16pt, weight: "bold", fill: light)[Fase 3 --- Desarrollo Seguro (Control 8.28)]
]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.8cm,
)[
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + cool))[
    #text(11pt, weight: "bold", fill: cool)[¿Qué se hace?]
    #v(0.2cm)
    #text(10pt, fill: light)[
      Los desarrolladores aplican los *7 principios de codificación segura* en cada línea de código. Se realizan revisiones de código por pares antes de cada merge. Se integran herramientas SAST en el IDE para detectar fallos mientras se programa.
    ]
    #v(0.1cm)
    #text(9pt, fill: muted)[Validación de entradas, sanitización, mínimo privilegio, manejo seguro de secretos, errores seguros.]
  ]
][
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + accent))[
    #text(11pt, weight: "bold", fill: accent)[¿Qué se produce?]
    #v(0.2cm)
    #text(10pt, fill: light)[- Código fuente con principios de seguridad aplicados
      - Revisiones de código documentadas con hallazgos
      - Configuración de SAST en el IDE y en CI/CD
      - Dependencias actualizadas y escaneadas
      - Secretos excluidos del repositorio (.env)]
    #v(0.1cm)
    #text(9pt, fill: muted)[El resultado es código con menor probabilidad de contener vulnerabilidades explotables.]
  ]
]

== Fase 4: Pruebas de Seguridad (8.29)

#block(width: 100%, inset: 0.8em, fill: accent2, radius: 4pt)[
  #text(16pt, weight: "bold", fill: light)[Fase 4 --- Pruebas de Seguridad (Control 8.29)]
]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.8cm,
)[
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + warm))[
    #text(11pt, weight: "bold", fill: warm)[¿Qué se hace?]
    #v(0.2cm)
    #text(10pt, fill: light)[
      Las pruebas de seguridad forman parte del proceso normal de pruebas. Los hallazgos se *registran*, *evalúan*, *corrigen* y *re-verifican*. Se definen criterios de aceptación claros: 0 vulnerabilidades críticas, 0 altas, cobertura SAST ≥ 80%, dependencias sin CVEs críticos.
    ]
    #v(0.1cm)
    #text(9pt, fill: muted)[SAST, DAST, code review, vulnerability assessment, penetration testing.]
  ]
][
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + accent))[
    #text(11pt, weight: "bold", fill: accent)[¿Qué se produce?]
    #v(0.2cm)
    #text(10pt, fill: light)[- Reportes de SAST y DAST con hallazgos
      - Registros de escaneo de dependencias
      - Resultados de penetration testing
      - Criterios de aceptación documentados y aprobados
      - Evidencia de que el software no se despliega si no cumple]
    #v(0.1cm)
    #text(9pt, fill: muted)[Si no se cumplen los criterios, el pipeline se detiene y no se produce despliegue.]
  ]
]

== Fase 5: Despliegue Seguro

#block(width: 100%, inset: 0.8em, fill: accent2, radius: 4pt)[
  #text(16pt, weight: "bold", fill: light)[Fase 5 --- Despliegue Seguro (Control 8.25)]
]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.8cm,
)[
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + accent2))[
    #text(11pt, weight: "bold", fill: rgb("#93c5fd"))[¿Qué se hace?]
    #v(0.2cm)
    #text(10pt, fill: light)[
      *Hardening:* Reducir superficie de ataque. Imágenes mínimas, usuarios no root, puertos restringidos.
      #v(0.1cm)
      *Gestión de secretos:* Variables de entorno en .env excluidos del repositorio. Gestores centralizados.
      #v(0.1cm)
      *Seguridad CI/CD:* Control de acceso a repositorios, revisiones obligatorias, segregación de entornos, Security Gate.
    ]
  ]
][
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + accent))[
    #text(11pt, weight: "bold", fill: accent)[¿Qué se produce?]
    #v(0.2cm)
    #text(10pt, fill: light)[- Imágenes Docker endurecidas y verificadas
      - Variables de entorno configuradas correctamente
      - Pipeline CI/CD con Security Gate activo
      - Entornos de dev, test y producción segregados
      - Registros de despliegue y trazabilidad]
    #v(0.1cm)
    #text(9pt, fill: muted)[El despliegue seguro es la verificación final antes de que el software llegue a los usuarios.]
  ]
]

== STRIDE

#block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt)[
  #text(11pt, fill: muted)[STRIDE identifica amenazas en cada fase de diseño:]
  #v(0.3cm)

  #table(
    columns: (1fr, 1fr, 1.5fr),
    stroke: 0.5pt + rgb("#2d2d3d"),
    fill: (_, y) => if y == 0 { accent } else { card-darker },
    text(fill: white, weight: "bold", size: 10pt)[Amenaza], text(fill: white, weight: "bold", size: 10pt)[Significado], text(fill: white, weight: "bold", size: 10pt)[Pregunta],
    text(fill: light, size: 10pt)[Spoofing], text(fill: light, size: 10pt)[Suplantación], text(fill: light, size: 10pt)[¿Quién es el usuario?],
    text(fill: light, size: 10pt)[Tampering], text(fill: light, size: 10pt)[Manipulación], text(fill: light, size: 10pt)[¿Se alteran los datos?],
    text(fill: light, size: 10pt)[Repudiation], text(fill: light, size: 10pt)[Negación], text(fill: light, size: 10pt)[¿Quién hizo qué?],
    text(fill: light, size: 10pt)[Info Disclosure], text(fill: light, size: 10pt)[Exposición], text(fill: light, size: 10pt)[¿Se lee info confidencial?],
    text(fill: light, size: 10pt)[DoS], text(fill: light, size: 10pt)[Indisponibilidad], text(fill: light, size: 10pt)[¿Se interrumpe el servicio?],
    text(fill: light, size: 10pt)[EoP], text(fill: light, size: 10pt)[Escalada], text(fill: light, size: 10pt)[¿Se obtienen permisos extra?],
  )
]

= Secure Coding (8.28)

== 7 Principios

#block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + cool))[
  #text(11pt, fill: muted)[Principios de codificación segura aprobados. Aplican a todo el código.]
]

#v(0.3cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.6cm,
)[
  #block(width: 100%, inset: 0.6em, fill: card-darker, radius: 4pt, stroke: (left: 2pt + accent))[
    #text(10pt, weight: "bold", fill: accent)[1. Nunca confiar en la entrada]
    #text(9pt, fill: muted)[ Toda entrada es no confiable hasta que se valide.]
  ]
  #block(width: 100%, inset: 0.6em, fill: card-darker, radius: 4pt, stroke: (left: 2pt + accent))[
    #text(10pt, weight: "bold", fill: accent)[2. Validar siempre]
    #text(9pt, fill: muted)[ Tipo, longitud, formato, rango.]
  ]
  #block(width: 100%, inset: 0.6em, fill: card-darker, radius: 4pt, stroke: (left: 2pt + accent))[
    #text(10pt, weight: "bold", fill: accent)[3. Sanitizar]
    #text(9pt, fill: muted)[ Escape HTML, prevenir XSS.]
  ]
  #block(width: 100%, inset: 0.6em, fill: card-darker, radius: 4pt, stroke: (left: 2pt + accent))[
    #text(10pt, weight: "bold", fill: accent)[4. Mínimo privilegio]
    #text(9pt, fill: muted)[ Solo permisos necesarios.]
  ]
][
  #block(width: 100%, inset: 0.6em, fill: card-darker, radius: 4pt, stroke: (left: 2pt + cool))[
    #text(10pt, weight: "bold", fill: cool)[5. Secretos]
    #text(9pt, fill: muted)[ Nunca hardcodear. Usar .env.]
  ]
  #block(width: 100%, inset: 0.6em, fill: card-darker, radius: 4pt, stroke: (left: 2pt + cool))[
    #text(10pt, weight: "bold", fill: cool)[6. Errores seguros]
    #text(9pt, fill: muted)[ No exponer stack traces.]
  ]
  #block(width: 100%, inset: 0.6em, fill: card-darker, radius: 4pt, stroke: (left: 2pt + cool))[
    #text(10pt, weight: "bold", fill: cool)[7. Dependencias]
    #text(9pt, fill: muted)[ Escanear, actualizar.]
  ]
  #block(width: 100%, inset: 0.6em, fill: card-darker, radius: 4pt, stroke: (left: 2pt + warm))[
    #text(10pt, weight: "bold", fill: warm)[+ Code Review]
    #text(9pt, fill: muted)[ Revisión por pares antes de merge.]
  ]
]

== OWASP Top 10

#block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt)[
  #table(
    columns: (1fr, auto, 1.8fr),
    stroke: 0.5pt + rgb("#2d2d3d"),
    fill: (_, y) => if y == 0 { accent } else { card-darker },
    text(fill: white, weight: "bold", size: 10pt)[Vulnerabilidad], text(fill: white, weight: "bold", size: 10pt)[Nivel], text(fill: white, weight: "bold", size: 10pt)[Prevención],
    text(fill: light, size: 10pt)[Injection], text(fill: rgb("#fca5a5"), size: 10pt)[Crítica], text(fill: light, size: 10pt)[Consultas parametrizadas, sanitización],
    text(fill: light, size: 10pt)[Broken Access Control], text(fill: rgb("#fca5a5"), size: 10pt)[Crítica], text(fill: light, size: 10pt)[Mínimo privilegio, roles],
    text(fill: light, size: 10pt)[Cryptographic Failures], text(fill: rgb("#fcd34d"), size: 10pt)[Alta], text(fill: light, size: 10pt)[Cifrado, bcrypt/argon2],
    text(fill: light, size: 10pt)[Security Misconfiguration], text(fill: rgb("#fcd34d"), size: 10pt)[Alta], text(fill: light, size: 10pt)[Hardening servidores/contenedores],
    text(fill: light, size: 10pt)[Vulnerable Components], text(fill: rgb("#fcd34d"), size: 10pt)[Alta], text(fill: light, size: 10pt)[Escaneo de dependencias],
    text(fill: light, size: 10pt)[Authentication Failures], text(fill: rgb("#fcd34d"), size: 10pt)[Alta], text(fill: light, size: 10pt)[Tokens con expiración],
  )
]

= Security Testing (8.29)

== Tipos de Pruebas

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.8cm,
)[
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + cool))[
    #text(12pt, weight: "bold", fill: cool)[SAST --- Análisis Estático]
    #v(0.1cm)
    #text(10pt, fill: muted)[Analiza código sin ejecutarlo. Detecta fallos temprano. CI/CD y IDE.]
    #v(0.1cm)
    #text(9pt, fill: rgb("#6b7280"))[ESLint, Semgrep, SonarQube, Bandit]
  ]
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + warm))[
    #text(12pt, weight: "bold", fill: warm)[DAST --- Análisis Dinámico]
    #v(0.1cm)
    #text(10pt, fill: muted)[Prueba app ejecutándose. Ataques simulados.]
    #v(0.1cm)
    #text(9pt, fill: rgb("#6b7280"))[OWASP ZAP, Burp Suite]
  ]
][
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + accent3))[
    #text(12pt, weight: "bold", fill: accent3)[Code Review]
    #v(0.1cm)
    #text(10pt, fill: muted)[Revisión humana. Errores de lógica. Obligatoria antes de merge.]
  ]
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + accent))[
    #text(12pt, weight: "bold", fill: accent)[Penetration Testing]
    #v(0.1cm)
    #text(10pt, fill: muted)[Especialista compromete el sistema. Impacto real.]
  ]
]

== Pipeline CI/CD

#block(width: 100%, inset: 1em, fill: card-darker, radius: 4pt)[
  #text(11pt, fill: muted)[Los controles 8.25, 8.28 y 8.29 se concretan en un pipeline de integración continua seguro.]
]

#v(0.4cm)

#align(center)[
  #fletcher-diagram(
    spacing: (2em, 1.2em),
    node-stroke: 1.5pt,
    node-inset: 0.5em,
    edge-stroke: 1.5pt,
    node((0, 0), [#text(9pt, weight: "bold", fill: light)[Git Push]], shape: "circle", radius: 1.6em, fill: card-dark),
    edge((0, 0), (1, 0), "->"),
    node((1, 0), [#text(9pt, weight: "bold", fill: light)[Build]], shape: "circle", radius: 1.6em, fill: card-dark),
    edge((1, 0), (2, 0), "->"),
    node((2, 0), [#text(9pt, weight: "bold", fill: light)[SAST]], shape: "circle", radius: 1.6em, fill: accent2),
    edge((2, 0), (3, 0), "->"),
    node((3, 0), [#text(9pt, weight: "bold", fill: light)[DAST]], shape: "circle", radius: 1.6em, fill: accent2),
    edge((3, 0), (4, 0), "->"),
    node((4, 0), [#text(9pt, weight: "bold", fill: light)[Security] \ #text(8pt, fill: rgb("#fca5a5"))[Gate]], shape: "circle", radius: 1.6em, fill: accent),
    edge((4, 0), (5, 0), "->"),
    node((5, 0), [#text(9pt, weight: "bold", fill: light)[Staging]], shape: "circle", radius: 1.6em, fill: accent3),
    edge((5, 0), (6, 0), "->"),
    node((6, 0), [#text(9pt, weight: "bold", fill: light)[Production]], shape: "circle", radius: 1.6em, fill: accent2),
  )
]

#v(0.3cm)

#text(10pt, fill: muted)[El *Security Gate* verifica: 0 vuln. críticas, SAST ≥ 80%, dependencias sin CVEs.]

== Acceptance Testing

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + rgb("#22c55e")))[
    #text(12pt, weight: "bold", fill: rgb("#86efac"))[Criterios de aceptación]
    #v(0.2cm)
    #text(10pt, fill: light)[- *0* vuln. críticas
      - *0* vuln. altas
      - Cobertura SAST ≥ 80%
      - Dependencias sin CVEs críticos
      - Pruebas aprobadas]
  ]
][
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + rgb("#ef4444")))[
    #text(12pt, weight: "bold", fill: rgb("#fca5a5"))[Si no cumple, no se despliega.]
    #v(0.2cm)
    #text(10pt, fill: light)[+ Registrarse
      + Evaluarse por severidad
      + Corregirse
      + Re-verificarse]
  ]
]

= Métricas

== Métricas Cuantitativas

#block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt)[
  #table(
    columns: (1fr, 1.8fr, 1fr),
    stroke: 0.5pt + rgb("#2d2d3d"),
    fill: (_, y) => if y == 0 { accent } else { card-darker },
    text(fill: white, weight: "bold", size: 10pt)[Métrica], text(fill: white, weight: "bold", size: 10pt)[Fórmula], text(fill: white, weight: "bold", size: 10pt)[Objetivo],
    text(fill: light, size: 10pt)[Densidad vuln.], text(fill: light, size: 10pt)[$D_v = V / "KLOC"$], text(fill: rgb("#86efac"), size: 10pt)[$D_v < 1$],
    text(fill: light, size: 10pt)[Cobertura SAST], text(fill: light, size: 10pt)[$C = A_("esc") / A_("tot") times 100$], text(fill: rgb("#86efac"), size: 10pt)[$C >= 80%$],
    text(fill: light, size: 10pt)[Tiempo remediación], text(fill: light, size: 10pt)[$T_("rem") = (sum Delta t) / n$], text(fill: rgb("#86efac"), size: 10pt)[$T_("rem") <= 7$ días],
    text(fill: light, size: 10pt)[Tasa aceptación], text(fill: light, size: 10pt)[$R = P_("apr") / P_("tot") times 100$], text(fill: rgb("#86efac"), size: 10pt)[$R = 100%$],
    text(fill: light, size: 10pt)[Madurez SSDLC], text(fill: light, size: 10pt)[$M = (sum P_i w_i) / (sum w_i)$], text(fill: rgb("#86efac"), size: 10pt)[Nivel $>= 2$],
  )
]

= Caso de Estudio

== Workcodile-dev

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + cool))[
    #text(12pt, weight: "bold", fill: cool)[Contexto]
    #v(0.2cm)
    #text(10pt, fill: light)[
      *Stack:* React, Node.js, MongoDB, MinIO, Docker
      *Auth:* JWT, bcrypt, roles student/mod/admin
      *Métricas:*
      - $D_v = 0.6$ (Bajo)
      - $C_("SAST") = 88.9%$
      - $T_("rem") = 5$ días
      - Madurez: Nivel 2
    ]
  ]
][
  #block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + accent))[
    #text(12pt, weight: "bold", fill: accent)[Hallazgos de seguridad]
    #v(0.2cm)

    #table(
      columns: (1fr, 1fr),
      stroke: 0.5pt + rgb("#2d2d3d"),
      fill: (_, y) => if y == 0 { accent } else { card-darker },
      text(fill: white, weight: "bold", size: 9pt)[Hallazgo], text(fill: white, weight: "bold", size: 9pt)[Riesgo],
      text(fill: light, size: 9pt)[JWT_SECRET hardcodeado], text(fill: light, size: 9pt)[Firma tokens válidos],
      text(fill: light, size: 9pt)[Credenciales MinIO defecto], text(fill: light, size: 9pt)[Acceso no autorizado],
      text(fill: light, size: 9pt)[MongoDB puerto expuesto], text(fill: light, size: 9pt)[Acceso directo a BD],
    )
  ]
]

= Cierre

== Lo que busca un auditor

#block(width: 100%, inset: 1em, fill: card-dark, radius: 4pt, stroke: (left: 3pt + accent3))[
  #text(12pt, fill: light)[Un auditor no busca una herramienta. Busca un *proceso definido, aplicado y demostrable*.]
]

#v(0.3cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 0.8em, fill: card-darker, radius: 4pt, stroke: (left: 2pt + cool))[
    #text(11pt, weight: "bold", fill: cool)[Evidencias 8.25]
    #v(0.1cm)
    #text(10pt, fill: muted)[- Política Secure SDLC
      - Capacitación equipo
      - Requisitos antes del desarrollo
      - Threat modeling documentado
      - Pipeline seguro]
  ]
  #block(width: 100%, inset: 0.8em, fill: card-darker, radius: 4pt, stroke: (left: 2pt + accent))[
    #text(11pt, weight: "bold", fill: accent)[Evidencias 8.28 y 8.29]
    #v(0.1cm)
    #text(10pt, fill: muted)[- Principios codificación aprobados
      - Revisiones con hallazgos
      - Resultados SAST/DAST
      - Criterios aceptación
      - Pipeline con Security Gate]
  ]
]

== ¿Preguntas?

#align(center + horizon)[
  #block(inset: 3em, fill: card-dark, radius: 4pt, stroke: (left: 4pt + accent))[
    #text(36pt, weight: "bold", fill: light)[¿Preguntas?]
    #v(0.8cm)
    #text(16pt, fill: accent)[Equipo 5 --- IS-722 Calidad de Software]
    #v(0.3cm)
    #text(13pt, fill: rgb("#6b7280"))[Universidad Nacional de Moquegua --- 2026-I]
  ]
]
