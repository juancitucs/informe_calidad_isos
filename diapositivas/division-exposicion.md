# División de Exposición — ISO/IEC 27001:2022

## Integrantes y temas asignados

| # | Integrante | Slides | Tema |
|---|-----------|--------|------|
| 1 | Harol Gerardo Mendoza Segura | 1-3 | Introducción |
| 2 | Juan Edwin Calizaya Llanos | 4-6 | SSDLC (8.25) |
| 3 | Joel Sebastián Luna Luna | 7-9 | Fases del SSDLC |
| 4 | Guido Maron Acero | 10-12 | Secure Coding (8.28) |
| 5 | Fernando Manuel Condori Apaza | 13-15 | Security Testing (8.29) |
| 6 | Eduardo Paolo Condori Chambi | 16-19 | Métricas y Cierre |

---

## 1. Harol Gerardo Mendoza Segura — Introducción

### Slide 1: Portada
- Presentar el tema: ISO/IEC 27001:2022, controles 8.25, 8.28 y 8.29
- Presentar al equipo y la asignatura

### Slide 2: Visión General
- La norma ISO/IEC 27001:2022 establece los requisitos para un SGSI
- Anexo A tiene 93 controles en 4 temas
- A.8 tiene 34 controles tecnológicos
- Los más relevantes: 8.25, 8.28 y 8.29

### Slide 3: Los 3 Controles Tecnológicos
- **8.25** (azul): Secure Development Life Cycle — reglas generales
- **8.28** (verde): Secure Coding — codificación segura
- **8.29** (ámbar): Security Testing — pruebas de seguridad

---

## 2. Juan Edwin Calizaya Llanos — SSDLC (8.25)

### Slide 4: Qué es un SSDLC
- Shift Left: mover seguridad hacia fases iniciales
- Comparar modelo tradicional vs SSDLC
- Modelo tradicional: seguridad al final → costos altos
- SSDLC: seguridad desde Requisitos → detección temprana

### Slide 5: Diagrama SSDLC
- Flujo: Requisitos → Diseño → Desarrollo (8.28) → Pruebas (8.29) → Despliegue → Mantenimiento
- Las fases 3 y 4 se vinculan con 8.28 y 8.29
- Todo bajo el control 8.25

### Slide 6: Fases 1-2
- **Fase 1 (Requisitos):** Activos, clasificación, CIA + Trazabilidad
- **Fase 2 (Diseño):** STRIDE, DFD, límites de confianza, controles

---

## 3. Joel Sebastián Luna Luna — Fases del SSDLC

### Slide 7: Fase 3 — Desarrollo (8.28)
- 7 principios de codificación segura
- Revisiones de código por pares
- SAST integrado en IDE
- **Produce:** código seguro, revisiones documentadas, SAST configurado

### Slide 8: Fase 4 — Pruebas (8.29)
- SAST, DAST, pentests, code review
- Criterios: 0 vuln. críticas, 0 altas, SAST ≥ 80%
- Hallazgos se registran, evalúan, corrigen y re-verifican
- **Produce:** reportes, registros, criterios de aceptación

### Slide 9: Fase 5 — Despliegue
- **Hardening:** imágenes mínimas, usuarios no root, puertos restringidos
- **Secretos:** .env excluidos, gestores centralizados
- **CI/CD:** control de acceso, revisiones, segregación, Security Gate

---

## 4. Guido Maron Acero — Secure Coding (8.28)

### Slide 10: STRIDE
- Amenazas en cada fase de diseño
- 6 categorías: Spoofing, Tampering, Repudiation, Info Disclosure, DoS, EoP
- Para cada componente se preguntan las 6 amenazas

### Slide 11: 7 Principios de Codificación Segura
1. Nunca confiar en la entrada
2. Validar siempre
3. Sanitizar
4. Mínimo privilegio
5. Secretos
6. Errores seguros
7. Dependencias seguras
+ Code Review

### Slide 12: OWASP Top 10
- Vulnerabilidades que previene el 8.28
- Injection (Crítica) → consultas parametrizadas
- Broken Access Control (Crítica) → mínimo privilegio
- Cryptographic Failures (Alta) → cifrado, bcrypt
- Security Misconfiguration (Alta) → hardening
- Vulnerable Components (Alta) → escaneo dependencias
- Authentication Failures (Alta) → tokens con expiración

---

## 5. Fernando Manuel Condori Apaza — Security Testing (8.29)

### Slide 13: Tipos de Pruebas
- **SAST:** análisis estático, código sin ejecutar, ESLint/Semgrep/SonarQube
- **DAST:** análisis dinámico, app ejecutándose, OWASP ZAP/Burp Suite
- **Code Review:** revisión humana, errores de lógica
- **Penetration Testing:** especialista compromete el sistema

### Slide 14: Pipeline CI/CD
- Flujo: Git Push → Build → SAST → DAST → Security Gate → Staging → Production
- Cada paso aplica un control específico
- Security Gate verifica criterios de aceptación

### Slide 15: Acceptance Testing
- **Criterios:** 0 vuln. críticas, 0 altas, SAST ≥ 80%, dependencias sin CVEs
- **Si no cumple:** se registran, evalúan, corrigen, re-verifican
- Si no se cumplen, no se despliega

---

## 6. Eduardo Paolo Condori Chambi — Métricas y Cierre

### Slide 16: Métricas Cuantitativas
- Densidad de vulnerabilidades: D_v = V / KLOC (objetivo: D_v < 1)
- Cobertura SAST: C = A_esc / A_tot × 100 (objetivo: ≥ 80%)
- Tiempo de remediación: T_rem = ΣΔt / n (objetivo: ≤ 7 días)
- Tasa de aceptación: R = P_apr / P_tot × 100 (objetivo: 100%)
- Madurez SSDLC: nivel ≥ 2

### Slide 17: Caso de Estudio Workcodile-dev
- Stack: React, Node.js, MongoDB, MinIO, Docker
- Métricas reales: D_v=0.6 (Bajo), C_SAST=88.9%, T_rem=5 días
- Hallazgos: JWT_SECRET hardcodeado, credenciales MinIO por defecto, MongoDB puerto expuesto
- Sin proceso formal, estos problemas pasan desapercibidos

### Slide 18: Lo que busca un auditor
- Evidencias de 8.25: política, capacitación, requisitos, threat modeling, pipeline
- Evidencias de 8.28 y 8.29: principios aprobados, revisiones, SAST/DAST, criterios, Security Gate
- Un auditor busca un proceso definido, aplicado y demostrable

### Slide 19: ¿Preguntas?
- Cerrar la presentación
- Invitar preguntas del público
