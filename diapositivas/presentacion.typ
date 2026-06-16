#import "@preview/touying:0.6.1": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#let fletcher-diagram = touying-reducer.with(reduce: fletcher.diagram, cover: fletcher.hide)

#set text(font: "Fira Sans", size: 14pt)
#show raw: set text(font: "Fira Code", size: 12pt)

#show: touying-slides.with(
  config-page(
    fill: gradient.radial(rgb("#e0f2fe"), rgb("#ffffff"), center: (30%, 20%), radius: 90%),
  ),
  config-info(
    title: [ISO/IEC 27001:2022 --- Controles 8.25, 8.28 y 8.29],
    subtitle: [Equipo 5 --- Calidad de Software],
    author: [IS-722 2026-I],
  ),
)

// Portada
= Portada

== ISO/IEC 27001:2022

#align(center + horizon)[
  #block(inset: 2em, fill: rgb("#ffffffcc"), radius: 16pt, stroke: 2pt + rgb("#1a56db"))[
    #text(36pt, weight: "bold", fill: rgb("#1a56db"))[ISO/IEC 27001:2022]
    #v(0.5cm)
    #text(20pt)[Controles 8.25, 8.28 y 8.29]
    #v(0.8cm)
    #text(16pt, fill: luma(80))[Equipo 5 --- IS-722 Calidad de Software]
    #v(0.3cm)
    #text(14pt, fill: luma(120))[Universidad Nacional de Moquegua --- 2026-I]
  ]
]

// Visión General
= ISO/IEC 27001:2022

== Visión General

La norma *ISO/IEC 27001:2022* establece los requisitos para establecer, implementar y mantener un *Sistema de Gestión de Seguridad de la Información (SGSI)*. Es la norma internacional de referencia para proteger la confidencialidad, integridad y disponibilidad de la información en cualquier organización.

#v(0.3cm)

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 0.8em, fill: rgb("#ffffffaa"), radius: 8pt, stroke: 1pt + rgb("#bfdbfe"))[
    *Anexo A --- Controles tecnológicos:*
    #v(0.2cm)
    - La norma tiene 93 controles organizados en 4 temas: organizacionales, personas, físicos y tecnológicos.
    - El tema *A.8 (Controles tecnológicos)* tiene 34 controles, de los cuales los más relevantes para desarrollo de software son el *8.25, 8.28 y 8.29*.
    - Estos tres controles forman un cluster que cubre todo el ciclo de vida del desarrollo seguro.
  ]
][
  #align(center + horizon)[
    #block(inset: 1em, fill: rgb("#f0fdf4"), radius: 12pt, width: 100%, stroke: 1pt + rgb("#bbf7d0"))[
      #text(22pt, weight: "bold", fill: rgb("#166534"))[SGSI]
      #v(0.3cm)
      #text(13pt)[Sistema de Gestión de Seguridad de la Información]
    ]
  ]
]

// Los 3 Controles
= Los 3 Controles

== Los 3 Controles Tecnológicos

El control *8.25* actúa como paraguas que establece las reglas generales. El *8.28* se enfoca en cómo se escribe el código. El *8.29* verifica que todo funcione antes de producción. Juntos cubren desde la planificación hasta el mantenimiento.

#v(0.3cm)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.8cm,
)[
  #block(width: 100%, inset: 0.8em, fill: rgb("#eff6ff"), radius: 8pt, stroke: 1pt + rgb("#bfdbfe"))[
    #text(28pt, weight: "bold", fill: rgb("#1a56db"))[8.25]
    #v(0.1cm)
    #text(13pt, weight: "bold")[Secure Development Life Cycle]
    #v(0.2cm)
    #text(11pt)[Establece reglas para el desarrollo seguro de software y sistemas. Aplica durante todo el ciclo de vida: requisitos, diseño, desarrollo, pruebas, despliegue y mantenimiento. Incluye separación de entornos, control de versiones y competencia del equipo.]
  ]
][
  #block(width: 100%, inset: 0.8em, fill: rgb("#f0fdf4"), radius: 8pt, stroke: 1pt + rgb("#bbf7d0"))[
    #text(28pt, weight: "bold", fill: rgb("#166534"))[8.28]
    #v(0.1cm)
    #text(13pt, weight: "bold")[Secure Coding]
    #v(0.2cm)
    #text(11pt)[Define principios de codificación segura para reducir vulnerabilidades. Cubre validación de entradas, manejo de secretos, mínimo privilegio, dependencias seguras y manejo de errores. Aplica a código interno y externo.]
  ]
][
  #block(width: 100%, inset: 0.8em, fill: rgb("#fef3c7"), radius: 8pt, stroke: 1pt + rgb("#fde68a"))[
    #text(28pt, weight: "bold", fill: rgb("#92400e"))[8.29]
    #v(0.1cm)
    #text(13pt, weight: "bold")[Security Testing]
    #v(0.2cm)
    #text(11pt)[Requiere pruebas de seguridad durante el desarrollo y antes de producción. Incluye SAST, DAST, revisiones de código, escaneo de vulnerabilidades y acceptance testing con criterios claros de aceptación.]
  ]
]

// SSDLC
= SSDLC (8.25)

== Qué es un SSDLC

#align(center + horizon)[
  #block(width: 100%, inset: 0.5em, fill: rgb("#ffffffaa"), radius: 8pt, stroke: 1pt + rgb("#e5e7eb"))[
    #text(14pt)[Un *Secure SDLC* es un ciclo de vida de desarrollo con seguridad integrada en cada fase. Concepto clave: *Shift Left* --- mover seguridad hacia fases iniciales.]
  ]

  #v(0.3cm)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1cm,
  )[
    #block(width: 100%, inset: 0.8em, fill: rgb("#fef2f2"), radius: 8pt, stroke: 1pt + rgb("#fecaca"))[
      #text(13pt, weight: "bold", fill: rgb("#991b1b"))[Modelo tradicional]
      #v(0.2cm)
      #text(10pt)[
        - La seguridad se revisaba *al final* del proyecto
        - Vulnerabilidades detectadas tarde
        - Costo de corrección alto
        - Más componentes afectados
      ]
    ]
  ][
    #block(width: 100%, inset: 0.8em, fill: rgb("#f0fdf4"), radius: 8pt, stroke: 1pt + rgb("#bbf7d0"))[
      #text(13pt, weight: "bold", fill: rgb("#166534"))[SSDLC --- Shift Left]
      #v(0.2cm)
      #text(10pt)[
        - Seguridad desde *Requisitos*, no al final
        - Threat modeling en diseño
        - Codificación segura en desarrollo
        - Pruebas automáticas en CI/CD
        - Hardening en despliegue
      ]
    ]
  ]
]

== Diagrama SSDLC

#align(center + horizon)[
  #block(width: 100%, inset: 0.5em, fill: rgb("#ffffffaa"), radius: 8pt, stroke: 1pt + rgb("#e5e7eb"))[
    #text(12pt)[El SSDLC integra seguridad en 6 fases. Las fases 3 y 4 se vinculan directamente con los controles *8.28* y *8.29*.]
  ]

  #v(0.5cm)

  #fletcher-diagram(
    spacing: (2.5em, 1.5em),
    node-stroke: 1.5pt,
    node-inset: 0.8em,
    edge-stroke: 1.5pt,
    node-fill: rgb("#eff6ff"),
    node((0, 0), [#text(11pt, weight: "bold")[Requisitos]], shape: "circle", radius: 2em),
    edge((0, 0), (1, 0), "->"),
    node((1, 0), [#text(11pt, weight: "bold")[Diseño]], shape: "circle", radius: 2em),
    edge((1, 0), (2, 0), "->"),
    node((2, 0), [#text(11pt, weight: "bold")[Desarrollo] \ #text(9pt)[8.28]], shape: "circle", radius: 2em, fill: rgb("#f0fdf4")),
    edge((2, 0), (3, 0), "->"),
    node((3, 0), [#text(11pt, weight: "bold")[Pruebas] \ #text(9pt)[8.29]], shape: "circle", radius: 2em, fill: rgb("#fef3c7")),
    edge((3, 0), (4, 0), "->"),
    node((4, 0), [#text(11pt, weight: "bold")[Despliegue]], shape: "circle", radius: 2em),
    edge((4, 0), (5, 0), "->"),
    node((5, 0), [#text(11pt, weight: "bold")[Mant.]], shape: "circle", radius: 2em),
  )

  #v(0.3cm)

  #text(10pt, fill: luma(100))[Todos bajo el control *8.25* --- Reglas del ciclo de vida seguro.]
]

== Fases del SSDLC: Requisitos y Diseño

#align(center + horizon)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 0.8cm,
  )[
    #block(width: 100%, inset: 0.8em, fill: rgb("#eff6ff"), radius: 8pt, stroke: 1pt + rgb("#bfdbfe"))[
      #text(13pt, weight: "bold", fill: rgb("#1a56db"))[Fase 1 --- Requisitos de Seguridad]
      #v(0.2cm)
      #text(10pt)[
        *Activos:* Bases de datos, credenciales, código fuente, registros.
        
        *Clasificación:* Pública, Interna, Confidencial, Restringida.
        
        *Requisitos CIA + Trazabilidad:*
        - *C:* Confidencialidad --- solo autorizados acceden
        - *I:* Integridad --- datos no modificados sin autorización
        - *D:* Disponibilidad --- servicio operativo
        - *T:* Trazabilidad --- acciones auditables
      ]
    ]
  ][
    #block(width: 100%, inset: 0.8em, fill: rgb("#f0fdf4"), radius: 8pt, stroke: 1pt + rgb("#bbf7d0"))[
      #text(13pt, weight: "bold", fill: rgb("#166534"))[Fase 2 --- Diseño Seguro]
      #v(0.2cm)
      #text(10pt)[
        *Threat Modeling (STRIDE):* Identificar amenazas en cada componente.
        
        *Diagrama de Flujo de Datos:*
        - Procesos que transforman datos
        - Flujos entre componentes
        - Almacenes de datos
        - Entidades externas
        
        *Límites de confianza:* Cada frontera requiere controles adicionales.
      ]
    ]
  ]
]

== Fases del SSDLC: Desarrollo, Pruebas y Despliegue

#align(center + horizon)[
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 0.6cm,
  )[
    #block(width: 100%, inset: 0.6em, fill: rgb("#f0fdf4"), radius: 8pt, stroke: 1pt + rgb("#bbf7d0"))[
      #text(12pt, weight: "bold", fill: rgb("#166534"))[Fase 3 --- Desarrollo (8.28)]
      #v(0.1cm)
      #text(10pt)[Se aplica codificación siguiendo los 7 principios de seguridad. Se realizan revisiones de código por pares. Se usan herramientas de análisis estático (SAST) integradas en el IDE.]
    ]
  ][
    #block(width: 100%, inset: 0.6em, fill: rgb("#fef3c7"), radius: 8pt, stroke: 1pt + rgb("#fde68a"))[
      #text(12pt, weight: "bold", fill: rgb("#92400e"))[Fase 4 --- Pruebas (8.29)]
      #v(0.1cm)
      #text(10pt)[Se ejecutan pruebas SAST y DAST. Se realizan penetration tests. Se definen criterios de aceptación: 0 vuln. críticas, 0 altas, cobertura SAST ≥ 80%. Si no se cumplen, no se despliega.]
    ]
  ][
    #block(width: 100%, inset: 0.6em, fill: rgb("#eff6ff"), radius: 8pt, stroke: 1pt + rgb("#bfdbfe"))[
      #text(12pt, weight: "bold", fill: rgb("#1a56db"))[Fase 5 --- Despliegue]
      #v(0.1cm)
      #text(10pt)[Hardening: imágenes mínimas, usuarios no root, puertos restringidos. Secretos con variables de entorno. Canalización CI/CD con Security Gate.]
    ]
  ]
]

== STRIDE para Threat Modeling

La metodología *STRIDE* permite identificar sistemáticamente las amenazas en cada fase de diseño. Para cada componente del sistema se preguntan las 6 categorías de amenazas:

#v(0.2cm)

#table(
  columns: (1fr, 1fr, 1.5fr),
  stroke: 0.5pt + luma(200),
  fill: (_, y) => if y == 0 { rgb("#1a56db") } else { white },
  text(fill: white, weight: "bold", size: 11pt)[*Amenaza*], text(fill: white, weight: "bold", size: 11pt)[*Significado*], text(fill: white, weight: "bold", size: 11pt)[*Pregunta clave*],
  text(size: 11pt)[Spoofing], text(size: 11pt)[Suplantación de identidad], text(size: 11pt)[¿Quién es realmente el usuario?],
  text(size: 11pt)[Tampering], text(size: 11pt)[Manipulación de datos], text(size: 11pt)[¿Pueden alterarse los datos en tránsito?],
  text(size: 11pt)[Repudiation], text(size: 11pt)[Negación de acciones], text(size: 11pt)[¿Se puede demostrar quién hizo qué?],
  text(size: 11pt)[Info Disclosure], text(size: 11pt)[Exposición de información], text(size: 11pt)[¿Se puede leer información confidencial?],
  text(size: 11pt)[DoS], text(size: 11pt)[Denegación de servicio], text(size: 11pt)[¿Se puede interrumpir el servicio?],
  text(size: 11pt)[EoP], text(size: 11pt)[Escalada de privilegios], text(size: 11pt)[¿Se pueden obtener permisos extra?],
)

// Secure Coding
= Secure Coding (8.28)

== 7 Principios de Codificación Segura

El control 8.28 establece principios de codificación segura aprobados. Estos principios deben aplicarse a todo el código: desarrollo interno, externo, bibliotecas y dependencias.

#v(0.1cm)

#{
  let colors = (
    rgb("#eff6ff"), rgb("#f0fdf4"), rgb("#fef3c7"), rgb("#fce7f3"),
    rgb("#f3e8ff"), rgb("#fef2f2"), rgb("#ecfdf5"),
  )
  let labels = (
    "1. Nunca confiar en la entrada",
    "2. Validar siempre",
    "3. Sanitizar",
    "4. Mínimo privilegio",
    "5. Secretos",
    "6. Errores seguros",
    "7. Dependencias",
  )
  let descs = (
    [Toda entrada es no confiable hasta que se valide. Consultas parametrizadas.],
    [Verificar tipo, longitud, formato, rango antes de procesar.],
    [Preparar datos para uso seguro. Escape HTML para prevenir XSS.],
    [Solo permisos necesarios. MongoDB usuario solo para la BD.],
    [Nunca hardcodear. Usar .env y gestores de secretos.],
    [No exponer stack traces. Mensajes genéricos, logs internos.],
    [Escanear, actualizar, eliminar abandonadas.],
  )
  for i in range(7) {
    block(width: 100%, inset: 0.5em, fill: colors.at(i), radius: 6pt, stroke: 0.5pt + luma(200))[
      #text(11pt, weight: "bold")[#labels.at(i)]
      #text(9pt)[ #descs.at(i)]
    ]
    v(0.1cm)
  }
}

== OWASP Top 10 y el control 8.28

El control 8.28 está directamente relacionado con la prevención de las vulnerabilidades del *OWASP Top 10*. Cada categoría de vulnerabilidad se mapea a uno o más principios de codificación segura. La prevención comienza en el código, no en la revisión final.

#v(0.2cm)

#table(
  columns: (1fr, auto, 1.8fr),
  stroke: 0.5pt + luma(200),
  fill: (_, y) => if y == 0 { rgb("#1a56db") } else { white },
  text(fill: white, weight: "bold", size: 11pt)[*Vulnerabilidad*], text(fill: white, weight: "bold", size: 11pt)[*Nivel*], text(fill: white, weight: "bold", size: 11pt)[*Principio de prevención*],
  text(size: 11pt)[Injection], text(size: 11pt)[Crítica], text(size: 11pt)[Validación y sanitización de entradas, consultas parametrizadas],
  text(size: 11pt)[Broken Access Control], text(size: 11pt)[Crítica], text(size: 11pt)[Control de acceso por roles, mínimo privilegio],
  text(size: 11pt)[Cryptographic Failures], text(size: 11pt)[Alta], text(size: 11pt)[Cifrado en reposo y tránsito, hashing con bcrypt/argon2],
  text(size: 11pt)[Security Misconfiguration], text(size: 11pt)[Alta], text(size: 11pt)[Hardening de servidores, contenedores y servicios],
  text(size: 11pt)[Vulnerable Components], text(size: 11pt)[Alta], text(size: 11pt)[Escaneo de dependencias, actualización periódica],
  text(size: 11pt)[Authentication Failures], text(size: 11pt)[Alta], text(size: 11pt)[Tokens con expiración, contraseñas hasheadas],
)

// Security Testing
= Security Testing (8.29)

== Tipos de Pruebas de Seguridad

#align(center + horizon)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 0.8cm,
  )[
    #block(width: 100%, inset: 0.6em, fill: rgb("#eff6ff"), radius: 8pt, stroke: 1pt + rgb("#bfdbfe"))[
      *SAST --- Análisis Estático*
      #v(0.1cm)
      #text(10pt)[Analiza código sin ejecutarlo. Escáner busca patrones de vulnerabilidades. Detecta fallos temprano. Se integra en CI/CD y en el IDE.]
      #v(0.1cm)
      #text(9pt, fill: luma(100))[ESLint, Semgrep, SonarQube, Bandit]
    ]

    #block(width: 100%, inset: 0.6em, fill: rgb("#f0fdf4"), radius: 8pt, stroke: 1pt + rgb("#bbf7d0"))[
      *DAST --- Análisis Dinámico*
      #v(0.1cm)
      #text(10pt)[Prueba la app ejecutándose. Scanner envía ataques simulados. Cubre superficie de ataque expuesta.]
      #v(0.1cm)
      #text(9pt, fill: luma(100))[OWASP ZAP, Burp Suite]
    ]
  ][
    #block(width: 100%, inset: 0.6em, fill: rgb("#fef3c7"), radius: 8pt, stroke: 1pt + rgb("#fde68a"))[
      *Code Review*
      #v(0.1cm)
      #text(10pt)[Revisión humana. Encuentra errores de lógica, decisiones de diseño inseguras y patrones que el escáner no reconoce. Obligatoria antes de cada merge.]
    ]

    #block(width: 100%, inset: 0.6em, fill: rgb("#fef2f2"), radius: 8pt, stroke: 1pt + rgb("#fecaca"))[
      *Penetration Testing*
      #v(0.1cm)
      #text(10pt)[Especialista compromete el sistema de forma controlada. Demuestra impacto real. Prueba más cercana a un ataque real.]
    ]
  ]
]

== Pipeline CI/CD Seguro

La materialización de los controles 8.25, 8.28 y 8.29 se concreta en un pipeline de integración continua seguro. Cada paso del pipeline aplica un control específico de seguridad.

#v(0.2cm)

#fletcher-diagram(
  spacing: (2em, 1.2em),
  node-stroke: 1.5pt,
  node-inset: 0.5em,
  edge-stroke: 1.5pt,
  node((0, 0), [#text(9pt, weight: "bold")[Git Push]], shape: "circle", radius: 1.6em, fill: rgb("#eff6ff")),
  edge((0, 0), (1, 0), "->"),
  node((1, 0), [#text(9pt, weight: "bold")[Build]], shape: "circle", radius: 1.6em, fill: rgb("#eff6ff")),
  edge((1, 0), (2, 0), "->"),
  node((2, 0), [#text(9pt, weight: "bold")[SAST]], shape: "circle", radius: 1.6em, fill: rgb("#f0fdf4")),
  edge((2, 0), (3, 0), "->"),
  node((3, 0), [#text(9pt, weight: "bold")[DAST]], shape: "circle", radius: 1.6em, fill: rgb("#f0fdf4")),
  edge((3, 0), (4, 0), "->"),
  node((4, 0), [#text(9pt, weight: "bold")[Security] \ #text(8pt)[Gate]], shape: "circle", radius: 1.6em, fill: rgb("#fef2f2")),
  edge((4, 0), (5, 0), "->"),
  node((5, 0), [#text(9pt, weight: "bold")[Staging]], shape: "circle", radius: 1.6em, fill: rgb("#fef3c7")),
  edge((5, 0), (6, 0), "->"),
  node((6, 0), [#text(9pt, weight: "bold")[Production]], shape: "circle", radius: 1.6em, fill: rgb("#f0fdf4")),
)

#v(0.2cm)

#text(10pt)[El *Security Gate* verifica criterios de aceptación: 0 vulnerabilidades críticas, 0 altas, cobertura SAST ≥ 80%, dependencias sin CVEs críticos. Si no se cumplen, el pipeline se detiene y no se despliega.]

== Acceptance Testing

#align(center + horizon)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1cm,
  )[
    #block(width: 100%, inset: 0.8em, fill: rgb("#f0fdf4"), radius: 8pt, stroke: 1pt + rgb("#bbf7d0"))[
      #text(13pt, weight: "bold")[Criterios de aceptación:]
      #v(0.2cm)
      #text(11pt)[
        - *0* vulnerabilidades críticas
        - *0* vulnerabilidades altas
        - Cobertura SAST ≥ 80%
        - Dependencias sin CVEs críticos
        - Pruebas ejecutadas y aprobadas
        - Configuración endurecida
      ]
    ]
  ][
    #block(width: 100%, inset: 0.8em, fill: rgb("#fef2f2"), radius: 8pt, stroke: 1pt + rgb("#fecaca"))[
      #text(13pt, weight: "bold", fill: rgb("#991b1b"))[Si no cumple, no se despliega.]
      #v(0.2cm)
      #text(11pt)[
        Los hallazgos deben:
        + *Registrarse* en seguimiento
        + *Evaluarse* por severidad
        + *Corregirse* antes de avanzar
        + *Re-verificarse* tras corrección
      ]
    ]
  ]
]

// Métricas
= Métricas

== Métricas Cuantitativas

La guía de trabajo práctico exige proponer métricas cuantitativas con sus ecuaciones. Estas métricas permiten evaluar objetivamente el cumplimiento de los controles 8.25, 8.28 y 8.29.

#v(0.2cm)

#table(
  columns: (1fr, 1.8fr, 1fr),
  stroke: 0.5pt + luma(200),
  fill: (_, y) => if y == 0 { rgb("#1a56db") } else { white },
  text(fill: white, weight: "bold", size: 11pt)[*Métrica*], text(fill: white, weight: "bold", size: 11pt)[*Fórmula*], text(fill: white, weight: "bold", size: 11pt)[*Objetivo*],
  text(size: 11pt)[Densidad de vulnerabilidades], text(size: 11pt)[$D_v = V / "KLOC"$], text(size: 11pt)[$D_v < 1$],
  text(size: 11pt)[Cobertura de análisis SAST], text(size: 11pt)[$C = A_("esc") / A_("tot") times 100$], text(size: 11pt)[$C >= 80%$],
  text(size: 11pt)[Tiempo medio de remediación], text(size: 11pt)[$T_("rem") = (sum Delta t) / n$], text(size: 11pt)[$T_("rem") <= 7$ días],
  text(size: 11pt)[Tasa de aceptación de seguridad], text(size: 11pt)[$R = P_("apr") / P_("tot") times 100$], text(size: 11pt)[$R = 100%$],
  text(size: 11pt)[Nivel de madurez SSDLC], text(size: 11pt)[$M = (sum P_i w_i) / (sum w_i)$], text(size: 11pt)[Nivel $>= 2$],
)

// Caso de Estudio
= Caso de Estudio

== Workcodile-dev: Contexto

Workcodile-dev es una plataforma web full-stack para estudiantes de la Universidad Nacional de Moquegua. Permite crear, compartir y gestionar cursos y publicaciones con un foro académico. Utiliza un stack tecnológico estándar que representa bien las aplicaciones web modernas.

#v(0.2cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  *Stack tecnológico:*
  - *Frontend:* React 18, TypeScript, Vite, Tailwind CSS, shadcn/ui
  - *Backend:* Node.js, Express.js, Mongoose ODM
  - *Base de datos:* MongoDB 7
  - *Almacenamiento:* MinIO (compatible S3)
  - *Infraestructura:* Docker, Docker Compose, Nginx

  *Autenticación:*
  - JWT con expiración
  - bcrypt para hashing de contraseñas
  - Roles: student, moderator, admin
][
  *Métricas del proyecto:*
  #block(width: 100%, inset: 0.6em, fill: rgb("#f0fdf4"), radius: 8pt, stroke: 1pt + rgb("#bbf7d0"))[
    - Densidad de vulnerabilidades: $D_v = 0.6$ (Bajo)
    - Cobertura SAST: $C_("SAST") = 88.9%$
    - Tiempo medio de remediación: $T_("rem") = 5$ días
    - Tasa de aceptación: $R = 100%$
    - Madurez SSDLC: Nivel 2 (Gestionado)
  ]
]

== Workcodile-dev: Hallazgos de Seguridad

Un análisis del código fuente reveló problemas reales de seguridad en la configuración del proyecto. Estos hallazgos demuestran por qué el control 8.25 es necesario: sin un proceso formal de revisión, estos problemas pasan desapercibidos.

#v(0.2cm)

#table(
  columns: (1fr, 1.5fr, 1.5fr),
  stroke: 0.5pt + luma(200),
  fill: (_, y) => if y == 0 { rgb("#dc2626") } else { white },
  text(fill: white, weight: "bold", size: 11pt)[*Hallazgo*], text(fill: white, weight: "bold", size: 11pt)[*Ubicación*], text(fill: white, weight: "bold", size: 11pt)[*Riesgo*],
  text(size: 11pt)[JWT_SECRET hardcodeado como "WorkcoWord"], text(size: 11pt)[docker-compose.yml:67], text(size: 11pt)[Cualquiera con acceso al repo puede firmar tokens válidos],
  text(size: 11pt)[Credenciales MinIO por defecto (minioadmin)], text(size: 11pt)[docker-compose.yml:23-24], text(size: 11pt)[Acceso no autorizado al almacenamiento de archivos],
  text(size: 11pt)[MongoDB puerto 27017 expuesto al host], text(size: 11pt)[docker-compose.yml:7], text(size: 11pt)[Acceso directo a la base de datos desde el host],
)

#v(0.2cm)

#text(10pt, fill: luma(80))[Estos problemas se habrían evitado con un proceso formal de revisión de configuración antes del despliegue, tal como lo exige el control 8.25.]

// Cierre
= Cierre

== Lo que busca un auditor

Un auditor de ISO/IEC 27001 no busca una herramienta específica. Busca un *proceso definido, aplicado y demostrable*. Las evidencias que espera encontrar incluyen:

#v(0.2cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 0.6em, fill: rgb("#f0fdf4"), radius: 8pt, stroke: 1pt + rgb("#bbf7d0"))[
    *Evidencias de 8.25:*
    #text(10pt)[
      - Política de Secure SDLC documentada
      - Capacitación del equipo en seguridad
      - Requisitos de seguridad definidos antes del desarrollo
      - Threat modeling realizado y documentado
      - Control de cambios y pipeline seguro
    ]
  ]

  #block(width: 100%, inset: 0.6em, fill: rgb("#eff6ff"), radius: 8pt, stroke: 1pt + rgb("#bfdbfe"))[
    *Evidencias de 8.28 y 8.29:*
    #text(10pt)[
      - Principios de codificación segura aprobados
      - Revisiones de código con hallazgos y correcciones
      - Resultados de SAST y DAST
      - Criterios de aceptación documentados
      - Pipeline CI/CD con Security Gate configurado
    ]
  ]
]

== ¿Preguntas?

#align(center + horizon)[
  #block(inset: 2em, fill: rgb("#ffffffcc"), radius: 16pt, stroke: 2pt + rgb("#1a56db"))[
    #text(32pt, weight: "bold", fill: rgb("#1a56db"))[¿Preguntas?]
    #v(0.8cm)
    #text(16pt)[Equipo 5 --- IS-722 Calidad de Software]
    #v(0.3cm)
    #text(13pt, fill: luma(120))[Universidad Nacional de Moquegua --- 2026-I]
  ]
]
