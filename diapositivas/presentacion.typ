#import "@preview/touying:0.6.1": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

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

Un *Secure SDLC* es un ciclo de vida de desarrollo de software con seguridad integrada en cada fase. El concepto clave es *Shift Left*: mover las actividades de seguridad hacia las fases iniciales del desarrollo, donde es más barato corregir problemas.

#v(0.3cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 0.8em, fill: rgb("#fef2f2"), radius: 8pt, stroke: 1pt + rgb("#fecaca"))[
    #text(13pt, weight: "bold", fill: rgb("#991b1b"))[Modelo tradicional]
    #v(0.2cm)
    #text(11pt)[En el enfoque tradicional, la seguridad se revisaba al final del proyecto, después de que el código ya estaba construido. Esto provocaba que las vulnerabilidades se detectaran tarde, con un costo de corrección mucho mayor y más componentes afectados.]
  ]
][
  #block(width: 100%, inset: 0.8em, fill: rgb("#f0fdf4"), radius: 8pt, stroke: 1pt + rgb("#bbf7d0"))[
    #text(13pt, weight: "bold", fill: rgb("#166534"))[SSDLC --- Shift Left]
    #v(0.2cm)
    #text(11pt)[Con el SSDLC, la seguridad está presente desde la fase de *Requisitos*. Cada fase del ciclo de vida incluye actividades de seguridad: threat modeling en diseño, codificación segura en desarrollo, pruebas automáticas en CI/CD y hardening en despliegue.]
  ]
]

== Diagrama SSDLC

El siguiente diagrama muestra las seis fases del SSDLC y cómo el control 8.25 las cubre. Las fases 3 y 4 están directamente vinculadas a los controles 8.28 y 8.29 respectivamente.

#v(0.2cm)

#align(center)[
  #diagram(
    spacing: (3em, 2em),
    node-stroke: 1.5pt,
    node-inset: 0.8em,
    edge-stroke: 1.5pt,
    node-fill: rgb("#eff6ff"),
    node((0, 0), [#text(11pt, weight: "bold")[Requisitos]], shape: "circle", radius: 2.2em),
    edge((0, 0), (1, 0), "->"),
    node((1, 0), [#text(11pt, weight: "bold")[Diseño]], shape: "circle", radius: 2.2em),
    edge((1, 0), (2, 0), "->"),
    node((2, 0), [#text(11pt, weight: "bold")[Desarrollo] \ #text(9pt)[8.28]], shape: "circle", radius: 2.2em, fill: rgb("#f0fdf4")),
    edge((2, 0), (3, 0), "->"),
    node((3, 0), [#text(11pt, weight: "bold")[Pruebas] \ #text(9pt)[8.29]], shape: "circle", radius: 2.2em, fill: rgb("#fef3c7")),
    edge((3, 0), (4, 0), "->"),
    node((4, 0), [#text(11pt, weight: "bold")[Despliegue]], shape: "circle", radius: 2.2em),
    edge((4, 0), (5, 0), "->"),
    node((5, 0), [#text(11pt, weight: "bold")[Mant.]], shape: "circle", radius: 2.2em),
  )
]

#v(0.2cm)

#text(10pt, fill: luma(100))[Todos bajo el control *8.25* --- Reglas generales del ciclo de vida seguro.]

== Fases del SSDLC: Requisitos y Diseño

*Fase 1 --- Requisitos de Seguridad:* Se identifican los activos de información que requieren protección (bases de datos, credenciales, código fuente, registros de auditoría). Se clasifican según su sensibilidad (Pública, Interna, Confidencial, Restringida). Se definen los requisitos CIA (Confidencialidad, Integridad, Disponibilidad) más Trazabilidad.

#v(0.2cm)

*Fase 2 --- Diseño Seguro:* Se realiza threat modeling usando la metodología *STRIDE* (Spoofing, Tampering, Repudiation, Information Disclosure, DoS, Escalada de privilegios). Se elaboran diagramas de flujo de datos (DFD) para identificar procesos, flujos, almacenes y entidades externas. Se definen los límites de confianza entre capas: entorno externo → aplicación → servicios internos → almacenamiento.

== Fases del SSDLC: Desarrollo, Pruebas y Despliegue

*Fase 3 --- Desarrollo (8.28):* Se aplica codificación siguiendo los 7 principios de seguridad. Se realizan revisiones de código por pares. Se usan herramientas de análisis estático (SAST) integradas en el IDE.

#v(0.2cm)

*Fase 4 --- Pruebas (8.29):* Se ejecutan pruebas SAST y DAST. Se realizan penetration tests. Se definen criterios de aceptación: 0 vulnerabilidades críticas, 0 altas, cobertura SAST ≥ 80%, dependencias sin CVEs críticos. Si no se cumplen, no se despliega.

#v(0.2cm)

*Fase 5 --- Despliegue:* Se aplica hardening (imágenes mínimas, usuarios no root, puertos restringidos). Se gestiona secretos con variables de entorno y gestores centralizados. Se asegura la canalización CI/CD con Security Gate.

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

El control 8.28 establece que la organización debe definir principios de codificación segura aprobados. Estos principios deben aplicarse a todo el código: desarrollo interno, externo, bibliotecas y dependencias. El objetivo es reducir la superficie de ataque desde la fase de implementación.

#v(0.2cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.8cm,
)[
  #block(width: 100%, inset: 0.6em, fill: rgb("#ffffffaa"), radius: 6pt, stroke: 1pt + rgb("#e5e7eb"))[
    *1. Nunca confiar en la entrada*
    #text(10pt)[ Toda entrada del usuario, de una API o de otro sistema se considera no confiable hasta que se valide. Ejemplo: consultas parametrizadas en vez de concatenación de strings.]
  ]

  #block(width: 100%, inset: 0.6em, fill: rgb("#ffffffaa"), radius: 6pt, stroke: 1pt + rgb("#e5e7eb"))[
    *2. Validar siempre*
    #text(10pt)[ Verificar tipo, longitud, formato, rango y conjunto permitido de valores antes de procesar cualquier dato. Ejemplo: express-validator para validar emails y contraseñas.]
  ]

  #block(width: 100%, inset: 0.6em, fill: rgb("#ffffffaa"), radius: 6pt, stroke: 1pt + rgb("#e5e7eb"))[
    *3. Sanitizar cuando corresponda*
    #text(10pt)[ Preparar datos para su uso seguro en un contexto específico. Prevenir XSS escapeando HTML. En React, no usar dangerouslySetInnerHTML sin sanitizar.]
  ]

  #block(width: 100%, inset: 0.6em, fill: rgb("#ffffffaa"), radius: 6pt, stroke: 1pt + rgb("#e5e7eb"))[
    *4. Principio de mínimo privilegio*
    #text(10pt)[ Usar únicamente los permisos necesarios para operar. MongoDB con usuario solo para la BD de la app, Docker con usuarios no root, puertos mínimos.]
  ]
][
  #block(width: 100%, inset: 0.6em, fill: rgb("#ffffffaa"), radius: 6pt, stroke: 1pt + rgb("#e5e7eb"))[
    *5. Gestión de secretos*
    #text(10pt)[ Nunca almacenar secretos en código fuente. Usar archivos .env excluidos del control de versiones y gestores de secretos como HashiCorp Vault o AWS Secrets Manager.]
  ]

  #block(width: 100%, inset: 0.6em, fill: rgb("#ffffffaa"), radius: 6pt, stroke: 1pt + rgb("#e5e7eb"))[
    *6. Manejo seguro de errores*
    #text(10pt)[ No exponer stack traces o detalles del sistema al usuario. Mostrar mensajes genéricos y registrar detalles internamente en logs seguros.]
  ]

  #block(width: 100%, inset: 0.6em, fill: rgb("#ffffffaa"), radius: 6pt, stroke: 1pt + rgb("#e5e7eb"))[
    *7. Dependencias seguras*
    #text(10pt)[ Escanear dependencias periódicamente (npm audit, pip-audit). Actualizar paquetes con vulnerabilidades. Eliminar dependencias abandonadas. Definir política de actualización.]
  ]
]

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

El control 8.29 exige que las pruebas de seguridad formen parte del proceso normal de pruebas del sistema. Los hallazgos deben registrarse, evaluarse, corregirse y volver a verificarse. Los entornos de pruebas deben mantenerse protegidos y segregados.

#v(0.2cm)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.8cm,
)[
  #block(width: 100%, inset: 0.6em, fill: rgb("#eff6ff"), radius: 8pt, stroke: 1pt + rgb("#bfdbfe"))[
    *SAST --- Análisis Estático*
    #v(0.1cm)
    #text(10pt)[Analiza el código fuente sin ejecutarlo. Un escáner recorre el código buscando patrones conocidos de vulnerabilidades como SQL Injection, hardcoded secrets y XSS. Detecta fallos temprano, antes de compilar o desplegar. Se integra en el pipeline de CI/CD y en el IDE.]
    #v(0.1cm)
    #text(9pt, fill: luma(100))[Herramientas: ESLint + plugins de seguridad, Semgrep, SonarQube, Bandit]
  ]

  #block(width: 100%, inset: 0.6em, fill: rgb("#f0fdf4"), radius: 8pt, stroke: 1pt + rgb("#bbf7d0"))[
    *DAST --- Análisis Dinámico*
    #v(0.1cm)
    #text(10pt)[Prueba la aplicación mientras está ejecutándose. Un scanner envía ataques simulados contra la app en funcionamiento y reporta vulnerabilidades como XSS reflejado, SQL Injection y configuraciones débiles. Cubre la superficie de ataque expuesta.]
    #v(0.1cm)
    #text(9pt, fill: luma(100))[Herramientas: OWASP ZAP, Burp Suite]
  ]
][
  #block(width: 100%, inset: 0.6em, fill: rgb("#fef3c7"), radius: 8pt, stroke: 1pt + rgb("#fde68a"))[
    *Code Review*
    #v(0.1cm)
    #text(10pt)[Revisión humana del código. Es fundamental porque hay problemas que ninguna herramienta detecta: errores de lógica de negocio, decisiones de diseño inseguras y patrones que el escáner no reconoce. Las revisiones deben ser obligatorias antes de cada merge.]
  ]

  #block(width: 100%, inset: 0.6em, fill: rgb("#fef2f2"), radius: 8pt, stroke: 1pt + rgb("#fecaca"))[
    *Penetration Testing*
    #v(0.1cm)
    #text(10pt)[Un especialista en seguridad intenta comprometer el sistema de forma controlada. A diferencia del DAST automatizado, demuestra impacto real explotando vulnerabilidades. Es la prueba más cercana a un ataque real y permite validar si los controles implementados son efectivos.]
  ]
]

== Pipeline CI/CD Seguro

La materialización de los controles 8.25, 8.28 y 8.29 se concreta en un pipeline de integración continua seguro. Cada paso del pipeline aplica un control específico de seguridad.

#v(0.2cm)

#align(center)[
  #diagram(
    spacing: (2.5em, 1.5em),
    node-stroke: 1.5pt,
    node-inset: 0.6em,
    edge-stroke: 1.5pt,
    node((0, 0), [#text(10pt, weight: "bold")[Git Push]], shape: "circle", radius: 1.8em, fill: rgb("#eff6ff")),
    edge((0, 0), (1, 0), "->"),
    node((1, 0), [#text(10pt, weight: "bold")[Build]], shape: "circle", radius: 1.8em, fill: rgb("#eff6ff")),
    edge((1, 0), (2, 0), "->"),
    node((2, 0), [#text(10pt, weight: "bold")[SAST]], shape: "circle", radius: 1.8em, fill: rgb("#f0fdf4")),
    edge((2, 0), (3, 0), "->"),
    node((3, 0), [#text(10pt, weight: "bold")[DAST]], shape: "circle", radius: 1.8em, fill: rgb("#f0fdf4")),
    edge((3, 0), (4, 0), "->"),
    node((4, 0), [#text(10pt, weight: "bold")[Security] \ #text(9pt)[Gate]], shape: "circle", radius: 1.8em, fill: rgb("#fef2f2")),
    edge((4, 0), (5, 0), "->"),
    node((5, 0), [#text(10pt, weight: "bold")[Staging]], shape: "circle", radius: 1.8em, fill: rgb("#fef3c7")),
    edge((5, 0), (6, 0), "->"),
    node((6, 0), [#text(10pt, weight: "bold")[Production]], shape: "circle", radius: 1.8em, fill: rgb("#f0fdf4")),
  )
]

#v(0.2cm)

#text(10pt)[El *Security Gate* verifica criterios de aceptación: 0 vulnerabilidades críticas, 0 altas, cobertura SAST ≥ 80%, dependencias sin CVEs críticos. Si no se cumplen, el pipeline se detiene y no se despliega.]

== Acceptance Testing

El acceptance testing es la verificación final antes de la producción. Define criterios claros y objetivos que el software debe cumplir. Si no se cumplen, no se despliega. Este es el principio fundamental del control 8.29.

#v(0.2cm)

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
      Los hallazgos identificados durante las pruebas deben:
      + *Registrarse* en un sistema de seguimiento
      + *Evaluarse* según su severidad y impacto
      + *Corregirse* antes de avanzar al siguiente paso
      + *Re-verificarse* tras la corrección
      
      Los entornos de pruebas deben estar protegidos y segregados de producción.
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
