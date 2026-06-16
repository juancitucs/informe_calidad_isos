#import "@preview/touying:0.6.1": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#let fletcher-diagram = touying-reducer.with(reduce: fletcher.diagram, cover: fletcher.hide)

#set text(font: "Fira Sans", size: 14pt, fill: rgb("#1e293b"))
#show raw: set text(font: "Fira Code", size: 12pt)

#show: touying-slides.with(
  config-page(
    fill: gradient.radial(rgb("#0f172a"), rgb("#1e3a5f"), center: (25%, 15%), radius: 95%),
  ),
  config-info(
    title: [ISO/IEC 27001:2022 --- Controles 8.25, 8.28 y 8.29],
    subtitle: [Equipo 5 --- Calidad de Software],
    author: [IS-722 2026-I],
  ),
)

// Paleta de colores
#let c-azul = rgb("#2563eb")
#let c-verde = rgb("#059669")
#let c-amarillo = rgb("#d97706")
#let c-rojo = rgb("#dc2626")
#let c-blanco = rgb("#f8fafc")
#let c-azul-osc = rgb("#1e40af")
#let c-verde-osc = rgb("#065f46")
#let c-amarillo-osc = rgb("#92400e")
#let c-rojo-osc = rgb("#991b1b")

// Portada
= Portada

== ISO/IEC 27001:2022

#align(center + horizon)[
  #block(inset: 2.5em, fill: rgb("#ffffff10"), radius: 16pt, stroke: 2pt + c-azul)[
    #text(36pt, weight: "bold", fill: c-blanco)[ISO/IEC 27001:2022]
    #v(0.5cm)
    #text(22pt, fill: rgb("#93c5fd"))[Controles 8.25, 8.28 y 8.29]
    #v(1cm)
    #text(16pt, fill: rgb("#cbd5e1"))[Equipo 5 --- IS-722 Calidad de Software]
    #v(0.3cm)
    #text(14pt, fill: rgb("#94a3b8"))[Universidad Nacional de Moquegua --- 2026-I]
  ]
]

// Visión General
= ISO/IEC 27001:2022

== Visión General

#align(center + horizon)[
  #grid(
    columns: (1.5fr, 1fr),
    column-gutter: 1cm,
  )[
    #block(width: 100%, inset: 0.8em, fill: rgb("#1e3a5f"), radius: 8pt, stroke: 1pt + rgb("#334155"))[
      #text(11pt, fill: c-blanco)[La norma *ISO/IEC 27001:2022* establece los requisitos para un *Sistema de Gestión de Seguridad de la Información (SGSI)*. Es la referencia mundial para proteger confidencialidad, integridad y disponibilidad.]
      #v(0.3cm)
      #text(11pt, fill: rgb("#93c5fd"))[*Anexo A --- Controles tecnológicos:*
        - 93 controles en 4 temas: organizacionales, personas, físicos y tecnológicos
        - *A.8:* Controles tecnológicos (34 controles)
        - Los más relevantes para desarrollo: *8.25, 8.28 y 8.29*
        - Forman un cluster que cubre todo el ciclo de vida del desarrollo seguro]
    ]
  ][
    #align(center + horizon)[
      #block(inset: 1.2em, fill: c-verde, radius: 12pt, width: 100%)[
        #text(24pt, weight: "bold", fill: c-blanco)[SGSI]
        #v(0.3cm)
        #text(13pt, fill: rgb("#d1fae5"))[Sistema de Gestión de Seguridad de la Información]
      ]
    ]
  ]
]

// Los 3 Controles
= Los 3 Controles

== Los 3 Controles Tecnológicos

#align(center + horizon)[
  #block(width: 90%, inset: 0.8em, fill: rgb("#1e3a5f"), radius: 8pt, stroke: 1pt + rgb("#334155"))[
    #text(12pt, fill: c-blanco)[El control *8.25* establece las reglas generales. El *8.28* se enfoca en el código. El *8.29* verifica antes de producción. Juntos cubren desde planificación hasta mantenimiento.]
  ]

  #v(0.4cm)

  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 0.8cm,
  )[
    #block(width: 100%, inset: 0.8em, fill: c-azul-osc, radius: 8pt)[
      #text(28pt, weight: "bold", fill: c-blanco)[8.25]
      #v(0.1cm)
      #text(13pt, weight: "bold", fill: rgb("#93c5fd"))[Secure Development Life Cycle]
      #v(0.2cm)
      #text(10pt, fill: rgb("#cbd5e1"))[Reglas para desarrollo seguro durante todo el ciclo de vida: requisitos, diseño, desarrollo, pruebas, despliegue y mantenimiento. Separación de entornos y competencia del equipo.]
    ]
  ][
    #block(width: 100%, inset: 0.8em, fill: c-verde-osc, radius: 8pt)[
      #text(28pt, weight: "bold", fill: c-blanco)[8.28]
      #v(0.1cm)
      #text(13pt, weight: "bold", fill: rgb("#a7f3d0"))[Secure Coding]
      #v(0.2cm)
      #text(10pt, fill: rgb("#d1fae5"))[Principios de codificación segura: validación de entradas, manejo de secretos, mínimo privilegio, dependencias seguras y manejo de errores. Aplica a código interno y externo.]
    ]
  ][
    #block(width: 100%, inset: 0.8em, fill: c-amarillo-osc, radius: 8pt)[
      #text(28pt, weight: "bold", fill: c-blanco)[8.29]
      #v(0.1cm)
      #text(13pt, weight: "bold", fill: rgb("#fde68a"))[Security Testing]
      #v(0.2cm)
      #text(10pt, fill: rgb("#fef3c7"))[Pruebas de seguridad durante desarrollo y antes de producción. SAST, DAST, revisiones de código, escaneo de vulnerabilidades y acceptance testing con criterios claros.]
    ]
  ]
]

// SSDLC
= SSDLC (8.25)

== Qué es un SSDLC

#align(center + horizon)[
  #block(width: 85%, inset: 0.6em, fill: c-azul-osc, radius: 8pt, stroke: 1pt + c-azul)[
    #text(13pt, weight: "bold", fill: c-blanco)[Un *Secure SDLC* integra seguridad en cada fase del desarrollo. Concepto clave: *Shift Left* --- mover seguridad hacia fases iniciales, donde es más barato corregir.]
  ]

  #v(0.4cm)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1cm,
  )[
    #block(width: 100%, inset: 0.8em, fill: c-rojo-osc, radius: 8pt)[
      #text(13pt, weight: "bold", fill: c-blanco)[Modelo tradicional]
      #v(0.2cm)
      #text(10pt, fill: rgb("#fecaca"))[
        - La seguridad se revisaba *al final* del proyecto
        - Vulnerabilidades detectadas tarde
        - Costo de corrección alto
        - Más componentes afectados
      ]
    ]
  ][
    #block(width: 100%, inset: 0.8em, fill: c-verde-osc, radius: 8pt)[
      #text(13pt, weight: "bold", fill: c-blanco)[SSDLC --- Shift Left]
      #v(0.2cm)
      #text(10pt, fill: rgb("#d1fae5"))[
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
  #block(width: 85%, inset: 0.5em, fill: c-azul-osc, radius: 8pt)[
    #text(12pt, fill: c-blanco)[El SSDLC integra seguridad en 6 fases. Las fases 3 y 4 se vinculan con los controles *8.28* y *8.29*.]
  ]

  #v(0.5cm)

  #fletcher-diagram(
    spacing: (2.5em, 1.5em),
    node-stroke: 1.5pt,
    node-inset: 0.8em,
    edge-stroke: 1.5pt,
    node-fill: rgb("#334155"),
    node((0, 0), [#text(11pt, weight: "bold", fill: c-blanco)[Requisitos]], shape: "circle", radius: 2em),
    edge((0, 0), (1, 0), "->"),
    node((1, 0), [#text(11pt, weight: "bold", fill: c-blanco)[Diseño]], shape: "circle", radius: 2em),
    edge((1, 0), (2, 0), "->"),
    node((2, 0), [#text(11pt, weight: "bold", fill: c-blanco)[Desarrollo] \ #text(9pt, fill: rgb("#a7f3d0"))[8.28]], shape: "circle", radius: 2em, fill: c-verde-osc),
    edge((2, 0), (3, 0), "->"),
    node((3, 0), [#text(11pt, weight: "bold", fill: c-blanco)[Pruebas] \ #text(9pt, fill: rgb("#fde68a"))[8.29]], shape: "circle", radius: 2em, fill: c-amarillo-osc),
    edge((3, 0), (4, 0), "->"),
    node((4, 0), [#text(11pt, weight: "bold", fill: c-blanco)[Despliegue]], shape: "circle", radius: 2em),
    edge((4, 0), (5, 0), "->"),
    node((5, 0), [#text(11pt, weight: "bold", fill: c-blanco)[Mant.]], shape: "circle", radius: 2em),
  )

  #v(0.3cm)

  #text(10pt, fill: rgb("#94a3b8"))[Todos bajo el control *8.25* --- Reglas del ciclo de vida seguro.]
]

== Fases 1 y 2: Requisitos y Diseño

#align(center + horizon)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 0.8cm,
  )[
    #block(width: 100%, inset: 0.8em, fill: c-azul-osc, radius: 8pt)[
      #text(13pt, weight: "bold", fill: rgb("#93c5fd"))[Fase 1 --- Requisitos de Seguridad]
      #v(0.2cm)
      #text(10pt, fill: rgb("#cbd5e1"))[
        *Activos:* Bases de datos, credenciales, código fuente, registros de auditoría.
        
        *Clasificación:* Pública, Interna, Confidencial, Restringida.
        
        #text(fill: c-blanco)[*Requisitos CIA + Trazabilidad:*]
        - *Confidencialidad:* solo autorizados acceden
        - *Integridad:* datos no modificados sin autorización
        - *Disponibilidad:* servicio operativo
        - *Trazabilidad:* acciones auditables
      ]
    ]
  ][
    #block(width: 100%, inset: 0.8em, fill: c-verde-osc, radius: 8pt)[
      #text(13pt, weight: "bold", fill: rgb("#a7f3d0"))[Fase 2 --- Diseño Seguro]
      #v(0.2cm)
      #text(10pt, fill: rgb("#d1fae5"))[
        *Threat Modeling (STRIDE):* Identificar amenazas en cada componente.
        
        #text(fill: c-blanco)[*Diagrama de Flujo de Datos:*]
        - Procesos que transforman datos
        - Flujos entre componentes
        - Almacenes de datos
        - Entidades externas
        
        *Límites de confianza:* Cada frontera requiere controles adicionales.
      ]
    ]
  ]
]

== Fases 3-5: Desarrollo, Pruebas y Despliegue

#align(center + horizon)[
  #block(width: 88%, inset: 0.5em, fill: rgb("#1e293b"), radius: 8pt)[
    #grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 0.6cm,
    )[
      #block(width: 100%, inset: 0.6em, fill: c-verde-osc, radius: 8pt)[
        #text(12pt, weight: "bold", fill: rgb("#a7f3d0"))[Fase 3 --- Desarrollo (8.28)]
        #v(0.1cm)
        #text(9pt, fill: rgb("#d1fae5"))[Codificación siguiendo los 7 principios. Revisiones por pares. Herramientas SAST integradas en el IDE.]
      ]
    ][
      #block(width: 100%, inset: 0.6em, fill: c-amarillo-osc, radius: 8pt)[
        #text(12pt, weight: "bold", fill: rgb("#fde68a"))[Fase 4 --- Pruebas (8.29)]
        #v(0.1cm)
        #text(9pt, fill: rgb("#fef3c7"))[Pruebas SAST y DAST. Penetration tests. Criterios: 0 vuln. críticas, cobertura SAST ≥ 80%. Si no cumple, no se despliega.]
      ]
    ][
      #block(width: 100%, inset: 0.6em, fill: c-azul-osc, radius: 8pt)[
        #text(12pt, weight: "bold", fill: rgb("#93c5fd"))[Fase 5 --- Despliegue]
        #v(0.1cm)
        #text(9pt, fill: rgb("#cbd5e1"))[Hardening: imágenes mínimas, usuarios no root, puertos restringidos. Secretos con variables de entorno. CI/CD con Security Gate.]
      ]
    ]
  ]
]

== STRIDE para Threat Modeling

#align(center + horizon)[
  #block(width: 85%)[
    #text(11pt, fill: rgb("#cbd5e1"))[La metodología *STRIDE* identifica amenazas en cada fase de diseño. Para cada componente se preguntan 6 categorías de amenazas:]
    #v(0.3cm)
    
    #table(
      columns: (1fr, 1fr, 1.5fr),
      stroke: 0.5pt + rgb("#334155"),
      fill: (_, y) => if y == 0 { c-azul } else { rgb("#1e293b") },
      text(fill: c-blanco, weight: "bold", size: 11pt)[*Amenaza*], text(fill: c-blanco, weight: "bold", size: 11pt)[*Significado*], text(fill: c-blanco, weight: "bold", size: 11pt)[*Pregunta clave*],
      text(fill: rgb("#cbd5e1"), size: 11pt)[Spoofing], text(fill: rgb("#cbd5e1"), size: 11pt)[Suplantación de identidad], text(fill: rgb("#cbd5e1"), size: 11pt)[¿Quién es realmente el usuario?],
      text(fill: rgb("#cbd5e1"), size: 11pt)[Tampering], text(fill: rgb("#cbd5e1"), size: 11pt)[Manipulación de datos], text(fill: rgb("#cbd5e1"), size: 11pt)[¿Pueden alterarse los datos en tránsito?],
      text(fill: rgb("#cbd5e1"), size: 11pt)[Repudiation], text(fill: rgb("#cbd5e1"), size: 11pt)[Negación de acciones], text(fill: rgb("#cbd5e1"), size: 11pt)[¿Se puede demostrar quién hizo qué?],
      text(fill: rgb("#cbd5e1"), size: 11pt)[Info Disclosure], text(fill: rgb("#cbd5e1"), size: 11pt)[Exposición de información], text(fill: rgb("#cbd5e1"), size: 11pt)[¿Se puede leer información confidencial?],
      text(fill: rgb("#cbd5e1"), size: 11pt)[DoS], text(fill: rgb("#cbd5e1"), size: 11pt)[Denegación de servicio], text(fill: rgb("#cbd5e1"), size: 11pt)[¿Se puede interrumpir el servicio?],
      text(fill: rgb("#cbd5e1"), size: 11pt)[EoP], text(fill: rgb("#cbd5e1"), size: 11pt)[Escalada de privilegios], text(fill: rgb("#cbd5e1"), size: 11pt)[¿Se pueden obtener permisos extra?],
    )
  ]
]

// Secure Coding
= Secure Coding (8.28)

== 7 Principios de Codificación Segura

#align(center + horizon)[
  #block(width: 85%, inset: 0.5em, fill: c-verde-osc, radius: 8pt)[
    #text(12pt, fill: c-blanco)[El control 8.28 establece principios de codificación segura aprobados. Deben aplicarse a todo el código: desarrollo interno, externo, bibliotecas y dependencias.]
  ]

  #v(0.3cm)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 0.6cm,
  )[
    #block(width: 100%, inset: 0.5em, fill: c-azul-osc, radius: 6pt)[
      #text(11pt, weight: "bold", fill: rgb("#93c5fd"))[1. Nunca confiar en la entrada]
      #text(9pt, fill: rgb("#cbd5e1"))[ Toda entrada es no confiable hasta que se valide. Consultas parametrizadas.]
    ]
    #block(width: 100%, inset: 0.5em, fill: c-azul-osc, radius: 6pt)[
      #text(11pt, weight: "bold", fill: rgb("#93c5fd"))[2. Validar siempre]
      #text(9pt, fill: rgb("#cbd5e1"))[ Tipo, longitud, formato, rango antes de procesar.]
    ]
    #block(width: 100%, inset: 0.5em, fill: c-azul-osc, radius: 6pt)[
      #text(11pt, weight: "bold", fill: rgb("#93c5fd"))[3. Sanitizar]
      #text(9pt, fill: rgb("#cbd5e1"))[ Preparar datos para uso seguro. Escape HTML para XSS.]
    ]
    #block(width: 100%, inset: 0.5em, fill: c-azul-osc, radius: 6pt)[
      #text(11pt, weight: "bold", fill: rgb("#93c5fd"))[4. Mínimo privilegio]
      #text(9pt, fill: rgb("#cbd5e1"))[ Solo permisos necesarios. MongoDB usuario solo para la BD.]
    ]
  ][
    #block(width: 100%, inset: 0.5em, fill: c-verde-osc, radius: 6pt)[
      #text(11pt, weight: "bold", fill: rgb("#a7f3d0"))[5. Secretos]
      #text(9pt, fill: rgb("#d1fae5"))[ Nunca hardcodear. Usar .env y gestores de secretos.]
    ]
    #block(width: 100%, inset: 0.5em, fill: c-verde-osc, radius: 6pt)[
      #text(11pt, weight: "bold", fill: rgb("#a7f3d0"))[6. Errores seguros]
      #text(9pt, fill: rgb("#d1fae5"))[ No exponer stack traces. Mensajes genéricos, logs internos.]
    ]
    #block(width: 100%, inset: 0.5em, fill: c-verde-osc, radius: 6pt)[
      #text(11pt, weight: "bold", fill: rgb("#a7f3d0"))[7. Dependencias]
      #text(9pt, fill: rgb("#d1fae5"))[ Escanear, actualizar, eliminar abandonadas.]
    ]
    #block(width: 100%, inset: 0.5em, fill: rgb("#1e293b"), radius: 6pt, stroke: 1pt + rgb("#475569"))[
      #text(11pt, weight: "bold", fill: rgb("#94a3b8"))[Refuerzo]
      #text(9pt, fill: rgb("#64748b"))[ Revisión por pares + SAST en CI/CD = defensa en profundidad.]
    ]
  ]
]

== OWASP Top 10 y el control 8.28

#align(center + horizon)[
  #block(width: 85%)[
    #text(11pt, fill: rgb("#cbd5e1"))[El control 8.28 previene las vulnerabilidades del *OWASP Top 10*. Cada categoría se mapea a principios de codificación segura.]
    #v(0.3cm)

    #table(
      columns: (1fr, auto, 1.8fr),
      stroke: 0.5pt + rgb("#334155"),
      fill: (_, y) => if y == 0 { c-azul } else { rgb("#1e293b") },
      text(fill: c-blanco, weight: "bold", size: 11pt)[*Vulnerabilidad*], text(fill: c-blanco, weight: "bold", size: 11pt)[*Nivel*], text(fill: c-blanco, weight: "bold", size: 11pt)[*Principio de prevención*],
      text(fill: rgb("#cbd5e1"), size: 11pt)[Injection], text(fill: rgb("#fca5a5"), size: 11pt)[Crítica], text(fill: rgb("#cbd5e1"), size: 11pt)[Validación y sanitización de entradas, consultas parametrizadas],
      text(fill: rgb("#cbd5e1"), size: 11pt)[Broken Access Control], text(fill: rgb("#fca5a5"), size: 11pt)[Crítica], text(fill: rgb("#cbd5e1"), size: 11pt)[Control de acceso por roles, mínimo privilegio],
      text(fill: rgb("#cbd5e1"), size: 11pt)[Cryptographic Failures], text(fill: rgb("#fcd34d"), size: 11pt)[Alta], text(fill: rgb("#cbd5e1"), size: 11pt)[Cifrado en reposo y tránsito, hashing con bcrypt/argon2],
      text(fill: rgb("#cbd5e1"), size: 11pt)[Security Misconfiguration], text(fill: rgb("#fcd34d"), size: 11pt)[Alta], text(fill: rgb("#cbd5e1"), size: 11pt)[Hardening de servidores, contenedores y servicios],
      text(fill: rgb("#cbd5e1"), size: 11pt)[Vulnerable Components], text(fill: rgb("#fcd34d"), size: 11pt)[Alta], text(fill: rgb("#cbd5e1"), size: 11pt)[Escaneo de dependencias, actualización periódica],
      text(fill: rgb("#cbd5e1"), size: 11pt)[Authentication Failures], text(fill: rgb("#fcd34d"), size: 11pt)[Alta], text(fill: rgb("#cbd5e1"), size: 11pt)[Tokens con expiración, contraseñas hasheadas],
    )
  ]
]

// Security Testing
= Security Testing (8.29)

== Tipos de Pruebas de Seguridad

#align(center + horizon)[
  #block(width: 85%, inset: 0.5em, fill: c-amarillo-osc, radius: 8pt)[
    #text(12pt, fill: c-blanco)[El control 8.29 exige pruebas de seguridad durante el desarrollo y antes de producción. Los hallazgos se registran, evalúan, corrigen y re-verifican.]
  ]

  #v(0.3cm)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 0.6cm,
  )[
    #block(width: 100%, inset: 0.6em, fill: c-azul-osc, radius: 8pt)[
      #text(fill: c-blanco)[*SAST --- Análisis Estático*]
      #v(0.1cm)
      #text(10pt, fill: rgb("#cbd5e1"))[Analiza código sin ejecutarlo. Escáner busca patrones de vulnerabilidades. Detecta fallos temprano. Se integra en CI/CD y en el IDE.]
      #v(0.1cm)
      #text(9pt, fill: rgb("#94a3b8"))[ESLint, Semgrep, SonarQube, Bandit]
    ]
    #block(width: 100%, inset: 0.6em, fill: c-verde-osc, radius: 8pt)[
      #text(fill: c-blanco)[*DAST --- Análisis Dinámico*]
      #v(0.1cm)
      #text(10pt, fill: rgb("#d1fae5"))[Prueba la app ejecutándose. Scanner envía ataques simulados. Cubre superficie de ataque expuesta.]
      #v(0.1cm)
      #text(9pt, fill: rgb("#a7f3d0"))[OWASP ZAP, Burp Suite]
    ]
  ][
    #block(width: 100%, inset: 0.6em, fill: c-amarillo-osc, radius: 8pt)[
      #text(fill: c-blanco)[*Code Review*]
      #v(0.1cm)
      #text(10pt, fill: rgb("#fef3c7"))[Revisión humana. Encuentra errores de lógica, decisiones de diseño inseguras y patrones que el escáner no reconoce. Obligatoria antes de cada merge.]
    ]
    #block(width: 100%, inset: 0.6em, fill: c-rojo-osc, radius: 8pt)[
      #text(fill: c-blanco)[*Penetration Testing*]
      #v(0.1cm)
      #text(10pt, fill: rgb("#fecaca"))[Especialista compromete el sistema de forma controlada. Demuestra impacto real. Prueba más cercana a un ataque real.]
    ]
  ]
]

== Pipeline CI/CD Seguro

#align(center + horizon)[
  #block(width: 85%, inset: 0.5em, fill: c-azul-osc, radius: 8pt)[
    #text(12pt, fill: c-blanco)[Los controles 8.25, 8.28 y 8.29 se concretan en un pipeline de integración continua seguro. Cada paso aplica un control específico.]
  ]

  #v(0.4cm)

  #fletcher-diagram(
    spacing: (2em, 1.2em),
    node-stroke: 1.5pt,
    node-inset: 0.5em,
    edge-stroke: 1.5pt,
    node((0, 0), [#text(9pt, weight: "bold", fill: c-blanco)[Git Push]], shape: "circle", radius: 1.6em, fill: rgb("#334155")),
    edge((0, 0), (1, 0), "->"),
    node((1, 0), [#text(9pt, weight: "bold", fill: c-blanco)[Build]], shape: "circle", radius: 1.6em, fill: rgb("#334155")),
    edge((1, 0), (2, 0), "->"),
    node((2, 0), [#text(9pt, weight: "bold", fill: c-blanco)[SAST]], shape: "circle", radius: 1.6em, fill: c-verde-osc),
    edge((2, 0), (3, 0), "->"),
    node((3, 0), [#text(9pt, weight: "bold", fill: c-blanco)[DAST]], shape: "circle", radius: 1.6em, fill: c-verde-osc),
    edge((3, 0), (4, 0), "->"),
    node((4, 0), [#text(9pt, weight: "bold", fill: c-blanco)[Security] \ #text(8pt, fill: rgb("#fca5a5"))[Gate]], shape: "circle", radius: 1.6em, fill: c-rojo-osc),
    edge((4, 0), (5, 0), "->"),
    node((5, 0), [#text(9pt, weight: "bold", fill: c-blanco)[Staging]], shape: "circle", radius: 1.6em, fill: c-amarillo-osc),
    edge((5, 0), (6, 0), "->"),
    node((6, 0), [#text(9pt, weight: "bold", fill: c-blanco)[Production]], shape: "circle", radius: 1.6em, fill: c-verde-osc),
  )

  #v(0.3cm)

  #text(10pt, fill: rgb("#cbd5e1"))[El *Security Gate* verifica: 0 vuln. críticas, 0 altas, cobertura SAST ≥ 80%, dependencias sin CVEs críticos. Si no se cumplen, el pipeline se detiene.]
]

== Acceptance Testing

#align(center + horizon)[
  #block(width: 80%, inset: 0.5em, fill: c-amarillo-osc, radius: 8pt)[
    #text(13pt, weight: "bold", fill: c-blanco)[El acceptance testing es la verificación final antes de producción.]
  ]

  #v(0.3cm)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1cm,
  )[
    #block(width: 100%, inset: 0.8em, fill: c-verde-osc, radius: 8pt)[
      #text(13pt, weight: "bold", fill: c-blanco)[Criterios de aceptación:]
      #v(0.2cm)
      #text(11pt, fill: rgb("#d1fae5"))[
        - *0* vulnerabilidades críticas
        - *0* vulnerabilidades altas
        - Cobertura SAST ≥ 80%
        - Dependencias sin CVEs críticos
        - Pruebas ejecutadas y aprobadas
        - Configuración endurecida
      ]
    ]
  ][
    #block(width: 100%, inset: 0.8em, fill: c-rojo-osc, radius: 8pt)[
      #text(13pt, weight: "bold", fill: c-blanco)[Si no cumple, no se despliega.]
      #v(0.2cm)
      #text(11pt, fill: rgb("#fecaca"))[
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

#align(center + horizon)[
  #block(width: 85%, inset: 0.5em, fill: c-azul-osc, radius: 8pt)[
    #text(12pt, fill: c-blanco)[Métricas para evaluar el cumplimiento de los controles 8.25, 8.28 y 8.29 con sus ecuaciones matemáticas.]
  ]

  #v(0.3cm)

  #table(
    columns: (1fr, 1.8fr, 1fr),
    stroke: 0.5pt + rgb("#334155"),
    fill: (_, y) => if y == 0 { c-azul } else { rgb("#1e293b") },
    text(fill: c-blanco, weight: "bold", size: 11pt)[*Métrica*], text(fill: c-blanco, weight: "bold", size: 11pt)[*Fórmula*], text(fill: c-blanco, weight: "bold", size: 11pt)[*Objetivo*],
    text(fill: rgb("#cbd5e1"), size: 11pt)[Densidad de vulnerabilidades], text(fill: rgb("#cbd5e1"), size: 11pt)[$D_v = V / "KLOC"$], text(fill: rgb("#a7f3d0"), size: 11pt)[$D_v < 1$],
    text(fill: rgb("#cbd5e1"), size: 11pt)[Cobertura de análisis SAST], text(fill: rgb("#cbd5e1"), size: 11pt)[$C = A_("esc") / A_("tot") times 100$], text(fill: rgb("#a7f3d0"), size: 11pt)[$C >= 80%$],
    text(fill: rgb("#cbd5e1"), size: 11pt)[Tiempo medio de remediación], text(fill: rgb("#cbd5e1"), size: 11pt)[$T_("rem") = (sum Delta t) / n$], text(fill: rgb("#a7f3d0"), size: 11pt)[$T_("rem") <= 7$ días],
    text(fill: rgb("#cbd5e1"), size: 11pt)[Tasa de aceptación], text(fill: rgb("#cbd5e1"), size: 11pt)[$R = P_("apr") / P_("tot") times 100$], text(fill: rgb("#a7f3d0"), size: 11pt)[$R = 100%$],
    text(fill: rgb("#cbd5e1"), size: 11pt)[Madurez SSDLC], text(fill: rgb("#cbd5e1"), size: 11pt)[$M = (sum P_i w_i) / (sum w_i)$], text(fill: rgb("#a7f3d0"), size: 11pt)[Nivel $>= 2$],
  )
]

// Caso de Estudio
= Caso de Estudio

== Workcodile-dev: Contexto

#align(center + horizon)[
  #block(width: 85%, inset: 0.5em, fill: c-verde-osc, radius: 8pt)[
    #text(12pt, fill: c-blanco)[Plataforma web full-stack para estudiantes de la UNAM. Foro académico con stack tecnológico estándar.]
  ]

  #v(0.3cm)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1cm,
  )[
    #block(width: 100%, inset: 0.6em, fill: c-azul-osc, radius: 8pt)[
      #text(11pt, weight: "bold", fill: rgb("#93c5fd"))[Stack tecnológico]
      #v(0.1cm)
      #text(9pt, fill: rgb("#cbd5e1"))[
        - *Frontend:* React 18, TypeScript, Vite, Tailwind CSS
        - *Backend:* Node.js, Express.js, Mongoose
        - *Base de datos:* MongoDB 7
        - *Almacenamiento:* MinIO (compatible S3)
        - *Infraestructura:* Docker, Docker Compose, Nginx
        - *Autenticación:* JWT, bcrypt, roles: student/moderator/admin
      ]
    ]
  ][
    #block(width: 100%, inset: 0.6em, fill: c-verde-osc, radius: 8pt)[
      #text(11pt, weight: "bold", fill: rgb("#a7f3d0"))[Métricas del proyecto]
      #v(0.1cm)
      #text(9pt, fill: rgb("#d1fae5"))[
        - Densidad vuln.: $D_v = 0.6$ *Bajo*
        - Cobertura SAST: $C_("SAST") = 88.9%$
        - Tiempo remediación: $T_("rem") = 5$ días
        - Tasa aceptación: $R = 100%$
        - Madurez SSDLC: Nivel 2 (Gestionado)
      ]
    ]
  ]
]

== Workcodile-dev: Hallazgos de Seguridad

#align(center + horizon)[
  #block(width: 85%, inset: 0.5em, fill: c-rojo-osc, radius: 8pt)[
    #text(12pt, fill: c-blanco)[Hallazgos reales de seguridad en la configuración del proyecto. Demuestran por qué el control 8.25 es necesario.]
  ]

  #v(0.3cm)

  #table(
    columns: (1fr, 1.2fr, 1.5fr),
    stroke: 0.5pt + rgb("#334155"),
    fill: (_, y) => if y == 0 { c-rojo } else { rgb("#1e293b") },
    text(fill: c-blanco, weight: "bold", size: 11pt)[*Hallazgo*], text(fill: c-blanco, weight: "bold", size: 11pt)[*Ubicación*], text(fill: c-blanco, weight: "bold", size: 11pt)[*Riesgo*],
    text(fill: rgb("#cbd5e1"), size: 11pt)[JWT_SECRET hardcodeado], text(fill: rgb("#cbd5e1"), size: 11pt)[docker-compose.yml:67], text(fill: rgb("#fca5a5"), size: 11pt)[Firma de tokens válidos],
    text(fill: rgb("#cbd5e1"), size: 11pt)[Credenciales MinIO por defecto], text(fill: rgb("#cbd5e1"), size: 11pt)[docker-compose.yml:23-24], text(fill: rgb("#fca5a5"), size: 11pt)[Acceso no autorizado a archivos],
    text(fill: rgb("#cbd5e1"), size: 11pt)[MongoDB puerto expuesto], text(fill: rgb("#cbd5e1"), size: 11pt)[docker-compose.yml:7], text(fill: rgb("#fca5a5"), size: 11pt)[Acceso directo a la BD],
  )
]

// Cierre
= Cierre

== Lo que busca un auditor

#align(center + horizon)[
  #block(width: 80%, inset: 0.5em, fill: c-azul-osc, radius: 8pt)[
    #text(13pt, weight: "bold", fill: c-blanco)[Un auditor no busca una herramienta. Busca un *proceso definido, aplicado y demostrable*.]
  ]

  #v(0.3cm)

  #grid(
    columns: (1fr, 1fr),
    column-gutter: 0.8cm,
  )[
    #block(width: 100%, inset: 0.6em, fill: c-verde-osc, radius: 8pt)[
      #text(fill: c-blanco)[*Evidencias de 8.25:*]
      #text(10pt, fill: rgb("#d1fae5"))[
        - Política de Secure SDLC documentada
        - Capacitación del equipo en seguridad
        - Requisitos definidos antes del desarrollo
        - Threat modeling realizado y documentado
        - Control de cambios y pipeline seguro
      ]
    ]
  ][
    #block(width: 100%, inset: 0.6em, fill: c-azul-osc, radius: 8pt)[
      #text(fill: c-blanco)[*Evidencias de 8.28 y 8.29:*]
      #text(10pt, fill: rgb("#cbd5e1"))[
        - Principios de codificación aprobados
        - Revisiones de código con hallazgos
        - Resultados de SAST y DAST
        - Criterios de aceptación documentados
        - Pipeline CI/CD con Security Gate
      ]
    ]
  ]
]

== ¿Preguntas?

#align(center + horizon)[
  #block(inset: 2.5em, fill: rgb("#ffffff10"), radius: 16pt, stroke: 2pt + c-azul)[
    #text(36pt, weight: "bold", fill: c-blanco)[¿Preguntas?]
    #v(0.8cm)
    #text(16pt, fill: rgb("#93c5fd"))[Equipo 5 --- IS-722 Calidad de Software]
    #v(0.3cm)
    #text(14pt, fill: rgb("#94a3b8"))[Universidad Nacional de Moquegua --- 2026-I]
  ]
]
