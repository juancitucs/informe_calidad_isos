# ISO/IEC 27001:2022 — Controles 8.25, 8.28 y 8.29

**Equipo 5 — IS-722 Calidad de Software**  
Universidad Nacional de Moquegua — 2026-I

---

## 1. ISO/IEC 27001:2022 — Visión General

La norma **ISO/IEC 27001:2022** establece los requisitos para establecer, implementar y mantener un **Sistema de Gestión de Seguridad de la Información (SGSI)**. Es la referencia mundial para proteger la confidencialidad, integridad y disponibilidad de la información.

### Estructura de la norma

La norma se divide en dos partes:

1. **Cláusulas 4 a 10** — Requisitos del sistema de gestión: contexto organizacional, liderazgo, planificación, apoyo, operación, evaluación del desempeño y mejora continua.
2. **Anexo A** — 93 controles de seguridad organizados en 4 temas:
   - A.5: Controles organizacionales (37)
   - A.6: Controles de personas (8)
   - A.7: Controles físicos (14)
   - **A.8: Controles tecnológicos (34)** ← los relevantes para desarrollo

ISO 27001 define **qué** se debe lograr, dejando a cada organización decidir **cómo** implementar los controles.

### Los 3 controles para desarrollo de software

| Control | Nombre | Qué cubre |
|---------|--------|-----------|
| **8.25** | Secure Development Life Cycle | Reglas generales del ciclo de vida seguro |
| **8.28** | Secure Coding | Principios de codificación segura |
| **8.29** | Security Testing | Pruebas de seguridad antes de producción |

---

## 2. Los 3 Controles Tecnológicos

- **8.25** establece las reglas generales: separación de entornos, control de versiones, competencia del equipo.
- **8.28** se enfoca en el código: cómo escribir código que no introduzca vulnerabilidades.
- **8.29** verifica antes de producción: pruebas que demuestran que el software es seguro.

Juntos cubren desde la planificación hasta el mantenimiento.

---

## 3. SSDLC (8.25)

### ¿Qué es un SSDLC?

Un **Secure SDLC** integra seguridad en cada fase del desarrollo. El concepto clave es **Shift Left**: mover las actividades de seguridad hacia las fases iniciales, donde es más barato corregir problemas.

**¿Por qué importa?** En el modelo tradicional, la seguridad se revisaba al final. Esto provocaba:
- Vulnerabilidades que aparecían en producción
- Información sensible expuesta
- Controles de acceso débiles
- Errores costosos de corregir

Con el SSDLC, la seguridad está presente desde la fase de Requisitos.

### Diagrama SSDLC

```
Requisitos → Diseño → Desarrollo (8.28) → Pruebas (8.29) → Despliegue → Mantenimiento
```

Todos bajo el control **8.25**.

| Fase | Pregunta clave | Control |
|------|---------------|---------|
| Requisitos | ¿Qué debemos proteger? | 8.25 |
| Diseño | ¿Cómo podrían atacarnos? | 8.25 |
| Desarrollo | ¿Cómo codificamos de forma segura? | 8.28 |
| Pruebas | ¿Cómo sabemos que es seguro? | 8.29 |
| Despliegue | ¿Cómo nos protegemos en producción? | 8.25 |
| Mantenimiento | ¿Cómo nos mantenemos seguros? | 8.25 |

---

## 4. Fase 1: Requisitos de Seguridad

Se responde: **¿Qué debemos proteger?**

- **Activos de información**: bases de datos, credenciales, código fuente, registros de auditoría, variables de entorno.
- **Clasificación**: Pública, Interna, Confidencial, Restringida.
- **Requisitos CIA + Trazabilidad**:
  - **C**onfidencialidad: solo usuarios autorizados acceden
  - **I**ntegridad: datos no modificados sin autorización
  - **D**isponibilidad: servicio operativo cuando se necesita
  - **T**razabilidad: acciones relevantes se registran y pueden auditarse

---

## 5. Fase 2: Diseño Seguro

Se responde: **¿Cómo podrían atacarnos?**

- **Threat Modeling (STRIDE)**: metodología para identificar amenazas en cada componente
- **Diagrama de Flujo de Datos (DFD)**: identificar procesos, flujos, almacenes y entidades externas
- **Límites de confianza**: cada frontera entre capas (externo → aplicación → servicios → almacenamiento) requiere controles adicionales

---

## 6. Fase 3: Desarrollo Seguro (Control 8.28)

### ¿Qué se hace?

Los desarrolladores aplican los **7 principios de codificación segura** en cada línea de código. Se realizan revisiones de código por pares antes de cada merge. Se integran herramientas SAST en el IDE.

### ¿Qué se produce?

- Código fuente con principios de seguridad aplicados
- Revisiones de código documentadas con hallazgos
- Configuración de SAST en el IDE y en CI/CD
- Dependencias actualizadas y escaneadas
- Secretos excluidos del repositorio (.env)

---

## 7. Fase 4: Pruebas de Seguridad (Control 8.29)

### ¿Qué se hace?

Las pruebas de seguridad forman parte del proceso normal de pruebas. Los hallazgos se **registran**, **evalúan**, **corrigen** y **re-verifican**. Se definen criterios de aceptación: 0 vulnerabilidades críticas, 0 altas, cobertura SAST ≥ 80%.

### ¿Qué se produce?

- Reportes de SAST y DAST con hallazgos
- Registros de escaneo de dependencias
- Resultados de penetration testing
- Criterios de aceptación documentados y aprobados

Si no se cumplen los criterios, el pipeline se detiene y no se despliega.

---

## 8. Fase 5: Despliegue Seguro

### ¿Qué se hace?

- **Hardening**: reducir superficie de ataque. Imágenes mínimas, usuarios no root, puertos restringidos, servicios innecesarios eliminados.
- **Gestión de secretos**: variables de entorno en .env excluidos del repositorio. Gestores centralizados (Vault, AWS Secrets Manager). Nunca secretos en código fuente.
- **Seguridad CI/CD**: control de acceso a repositorios, revisiones obligatorias, segregación de entornos (dev/test/prod), Security Gate.

### ¿Qué se produce?

- Imágenes Docker endurecidas y verificadas
- Variables de entorno configuradas correctamente
- Pipeline CI/CD con Security Gate activo
- Entornos segregados
- Registros de despliegue y trazabilidad

---

## 9. Fase 6: Mantenimiento

Después del despliegue, la seguridad debe mantenerse durante toda la vida útil del sistema. Las actividades incluyen:

- Aplicación de parches de seguridad
- Corrección de vulnerabilidades identificadas
- Actualización de dependencias y componentes externos
- Monitoreo continuo de riesgos y amenazas
- Revisión periódica de configuraciones de seguridad
- Revisión de permisos y controles de acceso
- Renovación y gestión de certificados digitales
- Evaluación de nuevas vulnerabilidades publicadas

La organización debe establecer procesos para identificar vulnerabilidades, evaluar su impacto, priorizar acciones de remediación y validar que las correcciones resuelvan el problema.

---

## 10. Lo que busca un auditor en 8.25

Un auditor busca evidencias de un **proceso definido, aplicado y demostrable**:

- Política de Secure SDLC documentada
- Capacitación del equipo en seguridad
- Requisitos de seguridad definidos antes del desarrollo
- Threat modeling realizado y documentado
- Resultados de pruebas de seguridad
- Control de cambios y pipeline seguro
- Registros de mantenimiento de seguridad

---

## 11. STRIDE — Threat Modeling

| Amenaza | Significado | Pregunta clave |
|---------|------------|----------------|
| **Spoofing** | Suplantación de identidad | ¿Quién es realmente el usuario? |
| **Tampering** | Manipulación de datos | ¿Pueden alterarse los datos en tránsito? |
| **Repudiation** | Negación de acciones | ¿Se puede demostrar quién hizo qué? |
| **Info Disclosure** | Exposición de información | ¿Se puede leer información confidencial? |
| **DoS** | Denegación de servicio | ¿Se puede interrumpir el servicio? |
| **EoP** | Escalada de privilegios | ¿Se pueden obtener permisos extra? |

---

## 12. Secure Coding (8.28) — 7 Principios

### Filosofía

Muchos ataques exitosos no son sofisticados. Son errores simples: SQL Injection, XSS, Path Traversal, Command Injection, CSRF. Todos nacen del código. El control 8.28 existe para que existan reglas claras que reduzcan la superficie de ataque.

### Los 7 principios

| # | Principio | Qué significa | Ejemplo |
|---|-----------|---------------|---------|
| 1 | **Nunca confiar en la entrada** | Toda entrada es no confiable hasta que se valide | Usar consultas parametrizadas en vez de concatenar strings |
| 2 | **Validar siempre** | Verificar tipo, longitud, formato, rango, conjunto permitido | Express-validator para emails y contraseñas |
| 3 | **Sanitizar** | Preparar datos para uso seguro en un contexto específico | Escape HTML para prevenir XSS. No usar dangerouslySetInnerHTML |
| 4 | **Mínimo privilegio** | Usar solo los permisos necesarios | MongoDB usuario solo para la BD, Docker usuarios no root |
| 5 | **Secretos** | Nunca almacenar secretos en código | Usar .env excluidos de Git, gestores centralizados |
| 6 | **Errores seguros** | No exponer detalles del sistema al usuario | Mensajes genéricos, loggear detalles internamente |
| 7 | **Dependencias** | Escanear y actualizar dependencias externas | npm audit, pip-audit, eliminar abandonadas |

---

## 13. OWASP Top 10 y el control 8.28

El control 8.28 previene las vulnerabilidades del OWASP Top 10:

| Vulnerabilidad | Nivel | Prevención |
|----------------|-------|------------|
| Injection | Crítica | Consultas parametrizadas, sanitización de entradas |
| Broken Access Control | Crítica | Control de acceso por roles, mínimo privilegio |
| Cryptographic Failures | Alta | Cifrado en reposo y tránsito, hashing con bcrypt/argon2 |
| Security Misconfiguration | Alta | Hardening de servidores, contenedores y servicios |
| Vulnerable Components | Alta | Escaneo de dependencias, actualización periódica |
| Authentication Failures | Alta | Tokens con expiración, contraseñas hasheadas |

---

## 14. Security Testing (8.29) — Tipos de Pruebas

### SAST — Análisis Estático

Analiza el código fuente **sin ejecutarlo**. Un escáner recorre el código buscando patrones conocidos de vulnerabilidades y reporta hallazgos de seguridad. Detecta fallos temprano, antes de compilar o desplegar.

**Herramientas:** ESLint + plugins de seguridad, Semgrep, SonarQube, Bandit.

### DAST — Análisis Dinámico

Prueba la aplicación **mientras está ejecutándose**. Un scanner envía ataques simulados contra la app en funcionamiento y reporta vulnerabilidades encontradas.

**Herramientas:** OWASP ZAP, Burp Suite.

### Diferencia clave SAST vs DAST

| Aspecto | SAST | DAST |
|---------|------|------|
| Qué analiza | Código fuente | Comportamiento en ejecución |
| Necesita la app | No | Sí, debe estar corriendo |
| Cobertura | Todo el código | Superficie de ataque expuesta |
| Velocidad | Rápido | Más lento |
| Fase ideal | Desarrollo | Testing/Pre-producción |

Ambos son complementarios.

### Code Review

Revisión humana del código. Encuentra errores de lógica, decisiones de diseño inseguras y patrones que el escáner no reconoce. Debe ser obligatoria antes de cada merge.

### Vulnerability Assessment

Escaneo de:
- **Dependencias** (npm audit, pip-audit) — identifica CVEs conocidos
- **Contenedores** (trivy, docker scout) — vulnerabilidades en imágenes Docker
- **Configuraciones** — verificación de servidores y servicios

### Penetration Testing

Un especialista intenta comprometer el sistema de forma controlada. A diferencia del DAST automatizado, demuestra impacto real explotando vulnerabilidades.

---

## 15. Pipeline CI/CD Seguro

```
Git Push → Build → SAST → DAST → Security Gate → Staging → Production
```

Cada paso aplica un control específico:
- **SAST**: análisis estático del código
- **DAST**: análisis dinámico de la app
- **Security Gate**: verifica criterios de aceptación
- Si no cumple, el pipeline se detiene

---

## 16. Acceptance Testing

### Criterios de aceptación

- **0** vulnerabilidades críticas
- **0** vulnerabilidades altas
- Cobertura SAST ≥ 80%
- Dependencias sin CVEs críticos
- Pruebas ejecutadas y aprobadas
- Configuración endurecida

### Si no cumple, no se despliega

Los hallazgos deben:
1. **Registrarse** en un sistema de seguimiento
2. **Evaluarse** según su severidad
3. **Corregirse** antes de avanzar
4. **Re-verificarse** tras la corrección

---

## 17. Métricas Cuantitativas

| Métrica | Fórmula | Objetivo | Ejemplo |
|---------|---------|----------|---------|
| Densidad de vulnerabilidades | D_v = V / KLOC | D_v < 1 | 4 vuln / 10 KLOC = 0.4 → Bajo |
| Cobertura SAST | C = A_esc / A_tot × 100 | C ≥ 80% | 52/60 × 100 = 86.7% |
| Tiempo medio de remediación | T_rem = Σ Δt / n | T_rem ≤ 7 días | 5 días → Alta prioridad |
| Tasa de aceptación | R = P_apr / P_tot × 100 | R = 100% | 10/10 = 100% |
| Madurez SSDLC | M = Σ(P_i × w_i) / Σw_i | Nivel ≥ 2 | Nivel 2 (Gestionado) |

---

## 18. Caso de Estudio: Workcodile-dev

### Contexto

Plataforma web full-stack para estudiantes de la UNAM (foro académico).

| Capa | Tecnología |
|------|-----------|
| Frontend | React 18, TypeScript, Vite, Tailwind CSS |
| Backend | Node.js, Express.js, JWT, bcrypt |
| Base de datos | MongoDB |
| Almacenamiento | MinIO (compatible S3) |
| Infraestructura | Docker, Docker Compose, Nginx |

### Análisis STRIDE aplicado

| Amenaza | Ejemplo en Workcodile | Control |
|---------|----------------------|---------|
| Spoofing | Suplantación con JWT falso | Validación firma JWT |
| Tampering | Modificación datos en tránsito | HTTPS, validación ObjectId |
| Repudiation | Usuario niega publicación | Logging con timestamp |
| Info Disclosure | Exposición de .env | .gitignore excluye .env |
| DoS | Inundación a la API | Rate limiting |
| Escalada | Acceso a rutas admin | Middleware por roles |

### Flujos de datos

- **Autenticación**: Usuario → Frontend (React) → Backend (Express) → MongoDB → JWT token
- **Publicaciones**: Usuario → Frontend → Backend → MinIO (archivo) + MongoDB (metadatos)
- **Correo**: Backend → Nodemailer → Gmail SMTP

### Principios de Secure Coding aplicados

| Principio | Aplicación en Workcodile |
|-----------|------------------------|
| Nunca confiar en la entrada | Validación de ObjectId en cada endpoint |
| Validar siempre | Middleware express-validator en registro |
| Sanitizar | React escapa HTML automáticamente |
| Mínimo privilegio | MongoDB usuario solo para la BD, Docker no root |
| Secretos | .env excluido de Git, .env.example como plantilla |
| Errores seguros | Mensaje genérico al usuario, log interno |
| Dependencias | npm audit periódico |

### Hallazgos de seguridad

| Hallazgo | Ubicación | Riesgo |
|----------|-----------|--------|
| JWT_SECRET hardcodeado como "WorkcoWord" | docker-compose.yml:67 | Cualquiera con acceso al repo puede firmar tokens |
| Credenciales MinIO por defecto (minioadmin) | docker-compose.yml:23-24 | Acceso no autorizado al almacenamiento |
| MongoDB puerto 27017 expuesto al host | docker-compose.yml:7 | Acceso directo a la base de datos |

Estos problemas pasan desapercibidos sin un proceso formal de revisión de configuración.

### Métricas reales del proyecto

- Densidad de vulnerabilidades: **D_v = 0.6** (Bajo)
- Cobertura SAST: **C_SAST = 88.9%**
- Tiempo medio de remediación: **T_rem = 5 días**
- Tasa de aceptación: **R = 100%**
- Madurez SSDLC: **Nivel 2 (Gestionado)**

---

## 19. Lo que busca un auditor

Un auditor de ISO/IEC 27001 no busca una herramienta específica. Busca un **proceso definido, aplicado y demostrable**.

### Evidencias de 8.25

- Política de Secure SDLC documentada
- Capacitación del equipo en seguridad
- Requisitos de seguridad definidos antes del desarrollo
- Threat modeling realizado y documentado
- Control de cambios y pipeline seguro
- Registros de mantenimiento de seguridad

### Evidencias de 8.28 y 8.29

- Principios de codificación segura aprobados
- Revisiones de código con hallazgos y correcciones
- Resultados de SAST y DAST
- Criterios de aceptación documentados
- Pipeline CI/CD con Security Gate configurado

---

**Equipo 5 — IS-722 Calidad de Software**  
Universidad Nacional de Moquegua — 2026-I
