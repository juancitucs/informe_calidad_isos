#import "@preview/touying:0.6.1": *

#set text(font: "Fira Sans", size: 18pt)
#show raw: set text(font: "Fira Code")

#show: touying-slides.with(
  config-info(
    title: [ISO/IEC 27001:2022 --- Controles 8.25, 8.28 y 8.29],
    subtitle: [Equipo 5 --- Calidad de Software],
    author: [IS-722 2026-I],
  ),
)

= Portada

== ISO/IEC 27001:2022

#align(center + horizon)[
  #text(40pt, weight: "bold")[ISO/IEC 27001:2022]
  #v(0.5cm)
  #text(24pt)[Controles 8.25, 8.28 y 8.29]
  #v(1cm)
  #text(18pt, fill: luma(100))[Equipo 5 --- IS-722 Calidad de Software]
  #v(0.3cm)
  #text(16pt, fill: luma(140))[2026-I]
]

= ISO/IEC 27001:2022

== Visión General

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 1em, fill: rgb("#eff6ff"), radius: 8pt)[
    *Norma internacional* para la gestión de seguridad de la información. Requisitos para proteger confidencialidad, integridad y disponibilidad.
  ]
  #v(0.3cm)
  *Anexo A --- Controles tecnológicos:*
  - 93 controles en 4 temas
  - *A.8:* Controles tecnológicos (34)
  - Enfocados en *8.25, 8.28 y 8.29*
][
  #align(center + horizon)[
    #block(inset: 1em, fill: rgb("#f0fdf4"), radius: 8pt, width: 100%)[
      #text(24pt, weight: "bold", fill: rgb("#166534"))[SGSI]
      #v(0.3cm)
      #text(14pt)[Sistema de Gestión de Seguridad de la Información]
    ]
  ]
]

= Los 3 Controles

== Controles Tecnológicos

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 1em, fill: rgb("#eff6ff"), radius: 8pt)[
    #text(32pt, weight: "bold", fill: rgb("#1a56db"))[8.25]
    #v(0.2cm)
    #text(15pt, weight: "bold")[Secure Development Life Cycle]
    #v(0.3cm)
    #text(13pt)[Reglas para desarrollo seguro durante todo el ciclo de vida.]
  ]
][
  #block(width: 100%, inset: 1em, fill: rgb("#f0fdf4"), radius: 8pt)[
    #text(32pt, weight: "bold", fill: rgb("#166534"))[8.28]
    #v(0.2cm)
    #text(15pt, weight: "bold")[Secure Coding]
    #v(0.3cm)
    #text(13pt)[Principios de codificación segura para reducir vulnerabilidades.]
  ]
][
  #block(width: 100%, inset: 1em, fill: rgb("#fef3c7"), radius: 8pt)[
    #text(32pt, weight: "bold", fill: rgb("#92400e"))[8.29]
    #v(0.2cm)
    #text(15pt, weight: "bold")[Security Testing]
    #v(0.3cm)
    #text(13pt)[Pruebas de seguridad durante desarrollo y antes de producción.]
  ]
]

= SSDLC (8.25)

== Qué es un SSDLC

Un *Secure SDLC* integra seguridad en cada fase. Concepto clave: *Shift Left* --- mover seguridad hacia fases iniciales.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 1em, fill: rgb("#fef2f2"), radius: 8pt)[
    #text(14pt, weight: "bold", fill: rgb("#991b1b"))[Modelo tradicional]
    #v(0.2cm)
    #text(13pt)[Análisis → Diseño → Desarrollo → Testing → Producción]
    #v(0.1cm)
    #text(12pt, style: "italic")[``Ahora revisemos seguridad'']
  ]
][
  #block(width: 100%, inset: 1em, fill: rgb("#f0fdf4"), radius: 8pt)[
    #text(14pt, weight: "bold", fill: rgb("#166534"))[SSDLC (Shift Left)]
    #v(0.2cm)
    #text(13pt)[Seguridad desde *Requisitos*, no al final.]
  ]
]

== Fases del SSDLC

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  *Fase 1: Requisitos*
  - Activos de información
  - Clasificación de la información
  - Requisitos CIA

  *Fase 2: Diseño Seguro*
  - Threat Modeling (STRIDE)
  - Diagrama de Flujo de Datos
  - Límites de confianza
][
  *Fase 3: Desarrollo* → 8.28
  *Fase 4: Pruebas* → 8.29
  *Fase 5: Despliegue*
  - Hardening, secretos, CI/CD

  *Fase 6: Mantenimiento*
  - Parches, monitoreo continuo
]

== STRIDE

#table(
  columns: (1fr, 1fr, 1.5fr),
  stroke: 0.5pt + luma(200),
  fill: (_, y) => if y == 0 { rgb("#1a56db") } else { white },
  text(fill: white, weight: "bold")[*Amenaza*], text(fill: white, weight: "bold")[*Significado*], text(fill: white, weight: "bold")[*Pregunta*],
  [Spoofing], [Suplantación], [¿Quién es el usuario?],
  [Tampering], [Manipulación], [¿Se alteran los datos?],
  [Repudiation], [Negación], [¿Quién hizo qué?],
  [Info Disclosure], [Exposición], [¿Se lee info confidencial?],
  [DoS], [Indisponibilidad], [¿Se interrumpe el servicio?],
  [Escalada], [Privilegios], [¿Se obtienen permisos extra?],
)

= Secure Coding (8.28)

== 7 Principios

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  *1. Nunca confiar en la entrada*
  #text(12pt)[Toda entrada es no confiable hasta que se valide.]

  *2. Validar siempre*
  #text(12pt)[Tipo, longitud, formato, rango.]

  *3. Sanitizar*
  #text(12pt)[Preparar datos para uso seguro.]

  *4. Mínimo privilegio*
  #text(12pt)[Solo los permisos necesarios.]
][
  *5. Secretos*
  #text(12pt)[Nunca hardcodear. Usar .env.]

  *6. Errores seguros*
  #text(12pt)[No exponer stack traces.]

  *7. Dependencias*
  #text(12pt)[Escanear, actualizar.]
]

== OWASP Top 10

#table(
  columns: (1fr, auto, 1.5fr),
  stroke: 0.5pt + luma(200),
  fill: (_, y) => if y == 0 { rgb("#1a56db") } else { white },
  text(fill: white, weight: "bold")[*Vulnerabilidad*], text(fill: white, weight: "bold")[*Nivel*], text(fill: white, weight: "bold")[*Prevención*],
  [Injection], [Crítica], [Consultas parametrizadas],
  [Broken Access Control], [Crítica], [Mínimo privilegio],
  [Cryptographic Failures], [Alta], [bcrypt, JWT expiración],
  [Security Misconfiguration], [Alta], [Hardening],
  [Vulnerable Components], [Alta], [Escaneo dependencias],
)

= Security Testing (8.29)

== Tipos de Pruebas

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  #block(width: 100%, inset: 0.8em, fill: rgb("#eff6ff"), radius: 8pt)[
    *SAST --- Análisis Estático*
    #v(0.2cm)
    #text(13pt)[Analiza código sin ejecutarlo. Escáner busca patrones.]
    #v(0.2cm)
    #text(12pt, fill: luma(100))[ESLint, Semgrep, SonarQube]
  ]

  #v(0.5cm)

  #block(width: 100%, inset: 0.8em, fill: rgb("#f0fdf4"), radius: 8pt)[
    *DAST --- Análisis Dinámico*
    #v(0.2cm)
    #text(13pt)[Prueba app ejecutándose. Ataques simulados.]
    #v(0.2cm)
    #text(12pt, fill: luma(100))[OWASP ZAP, Burp Suite]
  ]
][
  #block(width: 100%, inset: 0.8em, fill: rgb("#fef3c7"), radius: 8pt)[
    *Code Review*
    #v(0.2cm)
    #text(13pt)[Revisión humana. Errores de lógica.]
  ]

  #v(0.5cm)

  #block(width: 100%, inset: 0.8em, fill: rgb("#fef2f2"), radius: 8pt)[
    *Penetration Testing*
    #v(0.2cm)
    #text(13pt)[Especialista compromete el sistema.]
  ]
]

== Acceptance Testing

#block(width: 100%, inset: 1em, fill: rgb("#f0fdf4"), radius: 8pt)[
  #text(16pt, weight: "bold")[Criterios antes de producción:]
  #v(0.3cm)
  - *0* vulnerabilidades críticas
  - *0* vulnerabilidades altas
  - Cobertura SAST $>= 80%$
  - Dependencias sin CVEs críticos
  #v(0.3cm)
  #text(14pt, weight: "bold", fill: rgb("#991b1b"))[Si no cumple, no se despliega.]
]

== Pipeline CI/CD

#block(width: 100%, inset: 1em, fill: rgb("#f8fafc"), radius: 8pt, stroke: 1pt + luma(200))[
  ```text
  Git Push → Build → Unit Tests → SAST → Dependency Scan → DAST → Security Gate → Staging → Production
  ```
  #v(0.3cm)
  #text(13pt)[Integra *8.25* (proceso), *8.28* (código) y *8.29* (validación).]
]

= Métricas

== Métricas

#table(
  columns: (1fr, 1.5fr, 1fr),
  stroke: 0.5pt + luma(200),
  fill: (_, y) => if y == 0 { rgb("#1a56db") } else { white },
  text(fill: white, weight: "bold")[*Métrica*], text(fill: white, weight: "bold")[*Fórmula*], text(fill: white, weight: "bold")[*Objetivo*],
  [Densidad vuln.], [$D_v = V / "KLOC"$], [$D_v < 1$],
  [Cobertura SAST], [$C = A_("esc") / A_("tot") times 100$], [$C >= 80%$],
  [Tiempo remediación], [$T_("rem") = (sum Delta t) / n$], [$T_("rem") <= 7$ días],
  [Tasa aceptación], [$R = P_("apr") / P_("tot") times 100$], [$R = 100%$],
  [Madurez SSDLC], [$M = (sum P_i w_i) / (sum w_i)$], [Nivel $>= 2$],
)

= Caso de Estudio

== Workcodile-dev

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1cm,
)[
  *Stack:* React, Node.js, MongoDB, MinIO, Docker

  *Métricas:*
  - $D_v = 0.6$ (Bajo)
  - $C_("SAST") = 88.9%$
  - $T_("rem") = 5$ días
  - Madurez: Nivel 2
][
  *Hallazgos:*
  #block(width: 100%, inset: 0.8em, fill: rgb("#fef2f2"), radius: 8pt)[
    - JWT_SECRET hardcodeado
    - Credenciales MinIO por defecto
    - MongoDB puerto expuesto
  ]
  #v(0.3cm)
  #text(13pt)[Sin proceso formal, estos problemas pasan desapercibidos.]
]

= Cierre

== Auditoría

#block(width: 100%, inset: 1em, fill: rgb("#f0fdf4"), radius: 8pt)[
  - Política de Secure SDLC
  - Principios de codificación aprobados
  - Revisiones de código
  - Threat modeling
  - Resultados SAST y DAST
  - Pipeline CI/CD con Security Gate
  #v(0.3cm)
  #text(16pt, weight: "bold")[Busca un proceso definido, aplicado y demostrable.]
]

== ¿Preguntas?

#align(center + horizon)[
  #text(36pt, weight: "bold")[¿Preguntas?]
  #v(1cm)
  #text(18pt)[Equipo 5 --- IS-722 Calidad de Software]
]
