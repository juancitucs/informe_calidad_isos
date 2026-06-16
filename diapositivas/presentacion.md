# ISO/IEC 27001:2022 — Controles 8.25, 8.28 y 8.29

**Equipo 5 — IS-722 Calidad de Software**  
Universidad Nacional de Moquegua — 2026-I

---

## 1. ISO/IEC 27001:2022 — Visión General

La norma **ISO/IEC 27001:2022** establece los requisitos para establecer, implementar y mantener un **Sistema de Gestión de Seguridad de la Información (SGSI)**. Es la norma internacional de referencia para proteger la confidencialidad, integridad y disponibilidad de la información en cualquier organización.

### Anexo A — Controles tecnológicos

- La norma tiene **93 controles** organizados en 4 temas: organizacionales, personas, físicos y tecnológicos.
- El tema **A.8 (Controles tecnológicos)** tiene **34 controles**.
- Los más relevantes para desarrollo de software: **8.25, 8.28 y 8.29**.
- Estos tres controles forman un **cluster** que cubre todo el ciclo de vida del desarrollo seguro.

---

## 2. Los 3 Controles Tecnológicos

El control **8.25** establece las reglas generales. El **8.28** se enfoca en el código. El **8.29** verifica antes de producción. Juntos cubren desde la planificación hasta el mantenimiento.

| Control | Nombre | Descripción |
|---------|--------|-------------|
| **8.25** | Secure Development Life Cycle | Reglas para desarrollo seguro durante todo el ciclo de vida. Separación de entornos, control de versiones y competencia del equipo. |
| **8.28** | Secure Coding | Principios de codificación segura. Validación, secretos, mínimo privilegio, dependencias, errores. |
| **8.29** | Security Testing | Pruebas durante desarrollo y antes de producción. SAST, DAST, revisiones, acceptance testing. |

---

## 3. SSDLC (8.25)

### ¿Qué es un SSDLC?

Un **Secure SDLC** integra seguridad en cada fase del desarrollo. Concepto clave: **Shift Left** — mover seguridad hacia fases iniciales, donde es más barato corregir problemas.

| Modelo tradicional | SSDLC (Shift Left) |
|---|---|
| Seguridad al **final** del proyecto | Seguridad desde **Requisitos** |
| Vulnerabilidades detectadas tarde | Threat modeling en diseño |
| Costo alto | Codificación segura |
| Más componentes afectados | Pruebas en CI/CD, Hardening en despliegue |

### Diagrama SSDLC

```
Requisitos → Diseño → Desarrollo (8.28) → Pruebas (8.29) → Despliegue → Mantenimiento
```

Todos bajo el control **8.25** — Reglas del ciclo de vida seguro.

| Fase | Pregunta clave | Control |
|------|---------------|---------|
| Requisitos | ¿Qué debemos proteger? | 8.25 |
| Diseño | ¿Cómo podrían atacarnos? | 8.25 |
| Desarrollo | ¿Cómo codificamos de forma segura? | 8.28 |
| Pruebas | ¿Cómo sabemos que es seguro? | 8.29 |
| Despliegue | ¿Cómo nos protegemos en producción? | 8.25 |
| Mantenimiento | ¿Cómo nos mantenemos seguros? | 8.25 |

---

## 4. Fases 1 y 2: Requisitos y Diseño

### Fase 1 — Requisitos de Seguridad

- **Activos:** Bases de datos, credenciales, código fuente, registros de auditoría.
- **Clasificación:** Pública, Interna, Confidencial, Restringida.
- **Requisitos CIA + Trazabilidad:**
  - **C**onfidencialidad: solo autorizados acceden
  - **I**ntegridad: datos no modificados sin autorización
  - **D**isponibilidad: servicio operativo
  - **T**razabilidad: acciones auditables

### Fase 2 — Diseño Seguro

- **Threat Modeling (STRIDE):** Identificar amenazas en cada componente del sistema.
- **Diagrama de Flujo de Datos (DFD):** Procesos que transforman datos, flujos entre componentes, almacenes de datos, entidades externas.
- **Límites de confianza:** Cada frontera entre capas (externo → aplicación → servicios → almacenamiento) requiere controles adicionales.
- **Controles de diseño:** Validación, autorización, logging, sesiones, segregación.

---

## 5. Fase 3: Desarrollo Seguro (Control 8.28)

### ¿Qué se hace?

Los desarrolladores aplican los **7 principios de codificación segura** en cada línea de código. Se realizan revisiones de código por pares antes de cada merge. Se integran herramientas SAST en el IDE para detectar fallos mientras se programa.

### ¿Qué se produce?

- Código fuente con principios de seguridad aplicados
- Revisiones de código documentadas con hallazgos
- Configuración de SAST en el IDE y en CI/CD
- Dependencias actualizadas y escaneadas
- Secretos excluidos del repositorio (.env)

El resultado es código con menor probabilidad de contener vulnerabilidades explotables.

---

## 6. Fase 4: Pruebas de Seguridad (Control 8.29)

### ¿Qué se hace?

Las pruebas de seguridad forman parte del proceso normal de pruebas. Los hallazgos se **registran**, **evalúan**, **corrigen** y **re-verifican**. Se definen criterios de aceptación claros: 0 vulnerabilidades críticas, 0 altas, cobertura SAST ≥ 80%, dependencias sin CVEs críticos.

### ¿Qué se produce?

- Reportes de SAST y DAST con hallazgos
- Registros de escaneo de dependencias
- Resultados de penetration testing
- Criterios de aceptación documentados y aprobados
- Evidencia de que el software no se despliega si no cumple

Si no se cumplen los criterios, el pipeline se detiene y no se produce despliegue.

---

## 7. Fase 5: Despliegue Seguro (Control 8.25)

### ¿Qué se hace?

- **Hardening:** Reducir superficie de ataque. Imágenes mínimas (node:alpine), usuarios no root, puertos restringidos, servicios innecesarios eliminados.
- **Gestión de secretos:** Variables de entorno en archivos .env excluidos del repositorio. Gestores centralizados (Vault, AWS Secrets Manager). Nunca secretos en código fuente.
- **Seguridad CI/CD:** Control de acceso a repositorios, revisiones obligatorias, segregación de entornos (dev/test/prod), Security Gate.

### ¿Qué se produce?

- Imágenes Docker endurecidas y verificadas
- Variables de entorno configuradas correctamente
- Pipeline CI/CD con Security Gate activo
- Entornos de dev, test y producción segregados
- Registros de despliegue y trazabilidad

---

## 8. STRIDE — Threat Modeling

| Amenaza | Significado | Pregunta clave |
|---------|------------|----------------|
| **Spoofing** | Suplantación de identidad | ¿Quién es realmente el usuario? |
| **Tampering** | Manipulación de datos | ¿Pueden alterarse los datos en tránsito? |
| **Repudiation** | Negación de acciones | ¿Se puede demostrar quién hizo qué? |
| **Info Disclosure** | Exposición de información | ¿Se puede leer información confidencial? |
| **DoS** | Denegación de servicio | ¿Se puede interrumpir el servicio? |
| **EoP** | Escalada de privilegios | ¿Se pueden obtener permisos extra? |

---

## 9. Secure Coding (8.28) — 7 Principios

### Principios de codificación segura aprobados. Aplican a todo el código.

| # | Principio | Descripción |
|---|-----------|-------------|
| 1 | **Nunca confiar en la entrada** | Toda entrada es no confiable hasta que se valide. Consultas parametrizadas. |
| 2 | **Validar siempre** | Tipo, longitud, formato, rango antes de procesar. |
| 3 | **Sanitizar** | Preparar datos para uso seguro. Escape HTML para prevenir XSS. |
| 4 | **Mínimo privilegio** | Solo permisos necesarios. MongoDB usuario solo para la BD. |
| 5 | **Secretos** | Nunca hardcodear. Usar .env y gestores de secretos. |
| 6 | **Errores seguros** | No exponer stack traces. Mensajes genéricos, logs internos. |
| 7 | **Dependencias** | Escanear, actualizar, eliminar abandonadas. |
| + | **Code Review** | Revisión por pares antes de merge. |

---

## 10. OWASP Top 10 y el control 8.28

| Vulnerabilidad | Nivel | Prevención |
|----------------|-------|------------|
| Injection | Crítica | Consultas parametrizadas, sanitización |
| Broken Access Control | Crítica | Mínimo privilegio, roles |
| Cryptographic Failures | Alta | Cifrado, bcrypt/argon2 |
| Security Misconfiguration | Alta | Hardening servidores/contenedores |
| Vulnerable Components | Alta | Escaneo de dependencias |
| Authentication Failures | Alta | Tokens con expiración |

---

## 11. Security Testing (8.29) — Tipos de Pruebas

### SAST — Análisis Estático
Analiza código sin ejecutarlo. Detecta fallos temprano. Se integra en CI/CD y en el IDE.  
**Herramientas:** ESLint, Semgrep, SonarQube, Bandit

### DAST — Análisis Dinámico
Prueba la aplicación mientras está ejecutándose. Scanner envía ataques simulados contra la app.  
**Herramientas:** OWASP ZAP, Burp Suite

### Code Review
Revisión humana del código. Encuentra errores de lógica, decisiones de diseño inseguras y patrones que el escáner no reconoce. Obligatoria antes de cada merge.

### Penetration Testing
Especialista compromete el sistema de forma controlada. Demuestra impacto real. Prueba más cercana a un ataque real.

---

## 12. Pipeline CI/CD Seguro

```
Git Push → Build → SAST → DAST → Security Gate → Staging → Production
```

Los controles 8.25, 8.28 y 8.29 se concretan en un pipeline de integración continua seguro. Cada paso aplica un control específico de seguridad.

El **Security Gate** verifica: 0 vulnerabilidades críticas, 0 altas, cobertura SAST ≥ 80%, dependencias sin CVEs críticos. Si no se cumplen, el pipeline se detiene y no se despliega.

---

## 13. Acceptance Testing

### Criterios de aceptación

- **0** vulnerabilidades críticas
- **0** vulnerabilidades altas
- Cobertura SAST ≥ 80%
- Dependencias sin CVEs críticos
- Pruebas ejecutadas y aprobadas

### Si no cumple, no se despliega

Los hallazgos deben:
1. **Registrarse** en un sistema de seguimiento
2. **Evaluarse** según su severidad
3. **Corregirse** antes de avanzar al siguiente paso
4. **Re-verificarse** tras la corrección

---

## 14. Métricas Cuantitativas

| Métrica | Fórmula | Objetivo |
|---------|---------|----------|
| Densidad de vulnerabilidades | D_v = V / KLOC | D_v < 1 |
| Cobertura de análisis SAST | C = A_esc / A_tot × 100 | C ≥ 80% |
| Tiempo medio de remediación | T_rem = (Σ Δt) / n | T_rem ≤ 7 días |
| Tasa de aceptación de seguridad | R = P_apr / P_tot × 100 | R = 100% |
| Nivel de madurez SSDLC | M = (Σ P_i × w_i) / (Σ w_i) | Nivel ≥ 2 |

---

## 15. Caso de Estudio: Workcodile-dev

### Contexto

- **Stack:** React 18, Node.js, Express.js, MongoDB, MinIO, Docker
- **Auth:** JWT con expiración, bcrypt, roles student/moderator/admin

### Métricas del proyecto

- Densidad de vulnerabilidades: **D_v = 0.6** (Bajo)
- Cobertura SAST: **C_SAST = 88.9%**
- Tiempo medio de remediación: **T_rem = 5 días**
- Tasa de aceptación: **R = 100%**
- Madurez SSDLC: **Nivel 2 (Gestionado)**

### Hallazgos de seguridad

| Hallazgo | Ubicación | Riesgo |
|----------|-----------|--------|
| JWT_SECRET hardcodeado como "WorkcoWord" | docker-compose.yml:67 | Firma de tokens válidos |
| Credenciales MinIO por defecto (minioadmin) | docker-compose.yml:23-24 | Acceso no autorizado a archivos |
| MongoDB puerto 27017 expuesto al host | docker-compose.yml:7 | Acceso directo a la base de datos |

Estos problemas se habrían evitado con un proceso formal de revisión de configuración antes del despliegue, tal como lo exige el control 8.25.

---

## 16. Lo que busca un auditor

Un auditor de ISO/IEC 27001 no busca una herramienta específica. Busca un **proceso definido, aplicado y demostrable**.

### Evidencias de 8.25

- Política de Secure SDLC documentada
- Capacitación del equipo en seguridad
- Requisitos de seguridad definidos antes del desarrollo
- Threat modeling realizado y documentado
- Control de cambios y pipeline seguro

### Evidencias de 8.28 y 8.29

- Principios de codificación segura aprobados
- Revisiones de código con hallazgos y correcciones
- Resultados de SAST y DAST
- Criterios de aceptación documentados
- Pipeline CI/CD con Security Gate configurado

---

**Equipo 5 — IS-722 Calidad de Software**  
Universidad Nacional de Moquegua — 2026-I
