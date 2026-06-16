# Glosario de Términos — ISO/IEC 27001:2022

Términos del informe y las diapositivas, organizados por importancia para entender el documento. Los más relevantes primero, los básicos al final.

---

## Conceptos Clave de Seguridad (los más importantes)

**ISO/IEC 27001:2022**
Estándar internacional que define requisitos para gestionar la seguridad de la información. Establece qué se debe hacer para proteger los datos de una organización.

**SGSI (Sistema de Gestión de Seguridad de la Información)**
Sistema que una organización implementa para gestionar la seguridad de su información. ISO 27001 define los requisitos para crear un SGSI.

**CIA (Confidencialidad, Integridad, Disponibilidad)**
Los tres pilares de la seguridad de la información:
- **Confidencialidad**: Solo quien debe, puede ver la información.
- **Integridad**: La información no se ha cambiado sin permiso.
- **Disponibilidad**: La información está disponible cuando se necesita.

**Seguridad de la información**
Protección de la información para mantener su confidencialidad, integridad y disponibilidad. No es solo "tener antivirus" — es un sistema completo de reglas, controles y procesos.

**Shift Left**
Mover las actividades de seguridad hacia las fases iniciales del desarrollo, en vez de dejarlas para el final. Es más barato corregir un problema en diseño que en producción.

**Vulnerabilidad**
Debilidad en un sistema que un atacante podría explotar. Ejemplo: un formulario de login que no valida la contraseña podría permitir que alguien adivine credenciales.

---

## Ciclo de Vida y Procesos

**SDLC (Software Development Life Cycle)**
Ciclo de vida del desarrollo de software: desde la idea hasta el mantenimiento. Es el proceso completo de cómo se crea un programa.

**SSDLC (Secure Software Development Life Cycle)**
SDLC con seguridad integrada en cada fase. No es un proceso separado, sino que la seguridad se añade al proceso normal de desarrollo.

**Mantenimiento (de software)**
Fase después del despliegue donde se aplican parches, se corrigen errores y se actualizan componentes para mantener el sistema seguro y funcionando.

**PDCA (Plan-Do-Check-Act)**
Ciclo de mejora continua:
- **Plan**: Definir qué hacer.
- **Do**: Hacerlo.
- **Check**: Verificar si funcionó.
- **Act**: Mejorar basándose en lo aprendido.

**Desarrollo Seguro**
Prácticas de seguridad integradas en todo el proceso de creación de software, no solo al final. Incluye revisión de código, pruebas automáticas y controles en cada fase.

---

## Pruebas de Seguridad

**SAST (Static Application Security Testing)**
Análisis de seguridad que examina el código fuente sin ejecutarlo. Busca patrones conocidos de vulnerabilidades directamente en el código. Es como revisar un plano antes de construir un edificio.

**DAST (Dynamic Application Security Testing)**
Prueba de seguridad que ataca la aplicación mientras está corriendo. Es como enviar un "probador de intrusos" contra la web en funcionamiento para ver si puede entrar.

**Code Review (Revisión de Código)**
Cuando otro programador revisa el código de un compañero antes de que se una al proyecto principal. Se busca errores de lógica, malas prácticas y problemas de seguridad que las herramientas automáticas no detectan.

**Vulnerability Assessment (Evaluación de Vulnerabilidades)**
Escaneo del sistema buscando vulnerabilidades conocidas. Se revisan dependencias, configuraciones, contenedores y código.

**Penetration Testing (Pentest)**
Prueba donde un especialista intenta hackear un sistema de forma controlada para encontrar vulnerabilidades. Es como contratar a un ladrón para que intente entrar a tu casa y te cuente por dónde lo logró.

**Acceptance Testing**
Prueba final antes de que un software se ponga producción. Se verifican criterios específicos (como "0 vulnerabilidades críticas") y si no se cumplen, no se despliega.

**Pipeline CI/CD**
Tubería automatizada que lleva el código desde que se escribe hasta que se pone en producción. Cada paso tiene controles de seguridad: se construye, se prueba, se analiza y se despliega automáticamente.

---

## Amenazas y Vulnerabilidades

**STRIDE**
Metodología para identificar amenazas en un sistema. Cada letra representa un tipo de amenaza:
- **S**poofing (suplantación)
- **T**ampering (manipulación)
- **R**epudiation (negación)
- **I**nformation Disclosure (exposición)
- **D**enial of Service (indisponibilidad)
- **E**levation of Privilege (escalada)

**Threat Modeling (Modelado de Amenazas)**
Proceso de identificar y evaluar las amenazas potenciales que podrían afectar a un sistema. Se hace antes de escribir código para anticipar problemas.

**SQL Injection (Inyección SQL)**
Ataque donde se inserta código SQL malicioso en un formulario o parámetro para acceder o manipular la base de datos. Se previene con consultas parametrizadas.

**XSS (Cross-Site Scripting)**
Ataque donde se inyecta código JavaScript malicioso en una página web vista por otros usuarios. Puede robar sesiones, contraseñas o datos.

**CSRF (Cross-Site Request Forgery)**
Ataque donde un sitio malicioso engaña al navegador del usuario para que envíe peticiones falsas a otro sitio donde está logueado.

**DoS (Denial of Service)**
Ataque que busca dejar un servicio inaccesible. Un atacante envía tantas peticiones que el servidor se satura.

**OWASP (Open Worldwide Application Security Project)**
Organización sin fines de lucro que mantiene la lista de las 10 vulnerabilidades más críticas en aplicaciones web (OWASP Top 10). Es la referencia mundial en seguridad de aplicaciones.

**OWASP Top 10**
Lista de las 10 vulnerabilidades más peligrosas en aplicaciones web, actualizada periódicamente por OWASP.

---

## Codificación Segura

**Métrica**
Indicador medible que permite evaluar algo. Ejemplo: "densidad de vulnerabilidades" mide cuántos problemas hay por cada 1000 líneas de código.

**KLOC (Kilo Lines of Code)**
Mil líneas de código. Se usa como unidad de medida para métricas de software.

**Superficie de ataque**
Conjunto de puntos en un sistema por donde un atacante podría intentar entrar. Reducir la superficie de ataque significa cerrar entradas innecesarias.

**Hardening**
Proceso de reducir la superficie de ataque. Se eliminan servicios innecesarios, se cierran puertos, se cambian contraseñas por defecto y se aplican parches.

**Gestión de secretos**
Guardar contraseñas, claves de API y otros datos sensibles de forma segura, sin escribirlos en el código fuente.

**Hash**
Función matemática que convierte datos en una cadena ilegible e irreversible. Se usa para guardar contraseñas sin exponerlas.

**bcrypt**
Algoritmo de hash específico para contraseñas. Convierte una contraseña en una cadena que no se puede revertir.

---

## Protocolos y Herramientas de Red

**HTTP / HTTPS**
Protocolos para comunicarse en internet. HTTP es inseguro. HTTPS cifra los datos (la "S" = Secure).

**SSL / TLS**
Protocolos de seguridad para cifrar conexiones. SSL es obsoleto; TLS es su sucesor. Juntos forman HTTPS.

**SMTP (Simple Mail Transfer Protocol)**
Protocolo para enviar correos electrónicos. Cuando tu app envía un correo de verificación, usa SMTP.

**WAF (Web Application Firewall)**
Firewall que protege aplicaciones web filtrando el tráfico. Bloquea ataques antes de que lleguen a la app.

**CORS (Cross-Origin Resource Sharing)**
Mecanismo que controla qué sitios web pueden hacer peticiones a tu servidor.

**URL (Uniform Resource Locator)**
Dirección de una página o recurso en internet. Ejemplo: https://ejemplo.com/pagina

---

## Herramientas de Desarrollo

**Git**
Sistema de control de versiones. Guarda historial de cambios al código. Si algo se rompe, puedes volver atrás.

**GitHub**
Plataforma web para almacenar repositorios de Git. Permite trabajo en equipo con revisiones de código.

**Node.js**
Entorno de ejecución de JavaScript en el servidor. Permite crear servidores, APIs y backend con JavaScript.

**npm (Node Package Manager)**
Gestor de paquetes para JavaScript. Es como una "tienda de aplicaciones" para código reutilizable.

**Docker**
Herramienta que empaqueta software en "contenedores" portátiles. Funciona igual en cualquier computadora.

**Docker Scout**
Herramienta que escanea imágenes Docker buscando vulnerabilidades. Reemplazó a `docker scan`.

**Docker Compose**
Herramienta para definir y ejecutar múltiples contenedores Docker juntos. Define cómo se relacionan entre sí.

**Nginx**
Servidor web que funciona como "portero" de tráfico. Se usa como proxy inverso y balanceador de carga.

**Tailwind CSS**
Framework de CSS que permite crear diseños escribiendo clases directamente en el HTML.

**TypeScript**
Lenguaje que añade tipos de datos a JavaScript para encontrar errores antes de ejecutar el código.

**Vite**
Herramienta de desarrollo frontend que construye y sirve aplicaciones web de forma rápida.

---

## Bases de Datos y Almacenamiento

**MongoDB**
Base de datos NoSQL. Almacena datos en formato JSON, lo que la hace flexible y diferente a bases de datos como MySQL.

**Mongoose**
Librería que facilita el trabajo con MongoDB. Agrega validaciones y esquemas al interactuar con la base de datos.

**ODM (Object Data Mapper)**
Capa que traduce entre objetos de JavaScript y documentos de MongoDB. Mongoose es un ODM.

**MinIO**
Almacenamiento compatible con S3 (AWS) que funciona como servicio local. Es como un "almacén de archivos" privado.

**SQL (Structured Query Language)**
Lenguaje para manipular bases de datos relacionales. Las inyecciones SQL son ataques que aprovechan este lenguaje.

**NoSQL**
Tipo de base de datos que no usa tablas y filas tradicionales. Es más flexible pero diferente a SQL.

---

## Plataformas y Servicios

**AWS (Amazon Web Services)**
Plataforma de servicios en la nube de Amazon. Ofrece almacenamiento, bases de datos, servidores y herramientas de seguridad.

**Azure**
Plataforma de servicios en la nube de Microsoft. Similar a AWS, se integra con el ecosistema Microsoft.

---

## Formato y Autenticación

**JWT (JSON Web Token)**
Formato seguro para transmitir información firmada. Se usa en autenticación web. Es como un "pase de identidad" digital.

**bcrypt**
Algoritmo de hash para contraseñas. Convierte una contraseña en una cadena ilegible e irreversible.

**Token**
Secuencia de caracteres que representa algo (identidad, permiso). Un JWT es un tipo de token para autenticación.

---

## Nombres y Herramientas

**OWASP ZAP**
Herramienta gratuita para probar la seguridad de aplicaciones web. Envía ataques automatizados para encontrar vulnerabilidades.

**Burp Suite**
Suite de testing de seguridad con proxy interceptador para analizar tráfico web.

**Semgrep**
Herramienta de análisis estático (SAST) con reglas personalizables para múltiples lenguajes.

**SonarQube**
Herramienta de análisis completo de calidad y seguridad del código.

**ESLint**
Linter para JavaScript/TypeScript. Con plugins de seguridad, detecta patrones inseguros en el código.

**Bandit**
Herramienta de análisis estático específica para código Python.

**trivy**
Herramienta de escaneo de vulnerabilidades para imágenes Docker y dependencias.

**NIST (National Institute of Standards and Technology)**
Instituto del gobierno de EE.UU. que crea estándares técnicos. Su SP 800-218 es un marco para desarrollo seguro.

**ISO (International Organization for Standardization)**
Organización internacional que crea estándares técnicos y de gestión.

---

## Términos Básicos de Tecnología

**Backend**
Parte del software que funciona en el servidor. Maneja la lógica, bases de datos y seguridad.

**Frontend**
Parte del software que ve el usuario (pantallas, botones, formularios).

**API (Application Programming Interface)**
Forma en que dos programas se comunican. Es como un "mesonero" que lleva pedidos de un lado a otro.

**API REST**
Tipo de API que usa HTTP. Es el estándar más común en desarrollo web.

**Base de datos (BD)**
Lugar donde se almacena información organizada. Puede ser relacional (MySQL) o NoSQL (MongoDB).

**ID (Identifier)**
Identificador único para cada registro en una base de datos.

**HTML (HyperText Markup Language)**
Lenguaje que estructura el contenido de páginas web.

**CSS (Cascading Style Sheets)**
Lenguaje que define cómo se ve una página web (colores, fuentes, posiciones).

**HTTP / HTTPS**
Protocolos para comunicarse en internet. HTTPS es seguro (cifra datos).

**URL (Uniform Resource Locator)**
Dirección de un recurso en internet.

**IDE (Integrated Development Environment)**
Programa donde los desarrolladores escriben y prueban código. Ejemplo: VS Code.

**Git**
Sistema de control de versiones para guardar historial de cambios al código.

**GitHub**
Plataforma web para almacenar repositorios de Git.

**npm**
Gestor de paquetes para JavaScript. Es como una "tienda de aplicaciones" para código.

**Node.js**
Entorno de ejecución de JavaScript en el servidor.

**Docker**
Herramienta que empaqueta software en contenedores portátiles.

**Docker Scout**
Escáner de vulnerabilidades para imágenes Docker.

**Docker Compose**
Herramienta para definir múltiples contenedores Docker.

**Nginx**
Servidor web que funciona como proxy y balanceador de carga.

**TypeScript**
JavaScript con tipos de datos para encontrar errores antes de ejecutar.

**Vite**
Herramienta de desarrollo frontend rápida.

**Tailwind CSS**
Framework de CSS con clases predefinidas.

**MongoDB**
Base de datos NoSQL flexible.

**MinIO**
Almacenamiento de archivos compatible con S3.

**SMTP**
Protocolo para enviar correos electrónicos.

**CORS**
Control de qué sitios pueden hacer peticiones a tu servidor.

**URL**
Dirección de un recurso en internet.
