# Glosario de Términos — ISO/IEC 27001:2022

Términos técnicos que aparecen en el informe y las diapositivas. Explicados para que cualquiera pueda entenderlos, incluso sin experiencia previa en programación o seguridad.

---

## A

**Acceptance Testing**
Prueba final antes de que un software se ponga en producción. Se verifican criterios específicos (como "0 vulnerabilidades críticas") y si no se cumplen, no se despliega. Es como una inspección de calidad antes de entregar un producto.

**API (Application Programming Interface)**
Forma en que dos programas se comunican entre sí. Por ejemplo, cuando una app web pide datos a un servidor, lo hace a través de una API. Es como un "mesonero" que lleva pedidos de un lado a otro.

**API REST**
Tipo de API que usa HTTP para comunicarse. Es el estándar más común en desarrollo web moderno.

**AWS (Amazon Web Services)**
Plataforma de servicios en la nube de Amazon. Ofrece almacenamiento, bases de datos, servidores virtuales y herramientas de seguridad. Es una alternativa a tener servidores físicos propios.

**Azure**
Plataforma de servicios en la nube de Microsoft. Similar a AWS, ofrece bases de datos, servidores, almacenamiento y herramientas de seguridad. Se integra bien con el ecosistema Microsoft.

---

## B

**Backend**
Parte del software que funciona "detrás de escena", en el servidor. El usuario no lo ve directamente. Maneja la lógica, las bases de datos y la seguridad. Ejemplo: un servidor Node.js que procesa peticiones.

**Base de datos (BD)**
Lugar donde se almacena la información de forma organizada. Puede ser relacional (como MySQL) o NoSQL (como MongoDB). Es donde viven los datos de los usuarios, productos, registros, etc.

**bcrypt**
Algoritmo de hash (resumen) para contraseñas. Convierte una contraseña en una cadena ilegible que no se puede revertir. Es como un molde de una llave: puedes verificar si una llave encaja, pero no puedes reconstruir la llave original.

---

## C

**CIA (Confidencialidad, Integridad, Disponibilidad)**
Los tres pilares de la seguridad de la información:
- **Confidencialidad**: Solo quien debe, puede ver la información.
- **Integridad**: La información no se ha cambiado sin permiso.
- **Disponibilidad**: La información está disponible cuando se necesita.

**CI/CD (Integración Continua / Entrega Continua)**
Sistema automatizado donde el código se junta, se prueba y se despliega continuamente. Cada vez que un programador envía código, una "tubería" (pipeline) lo construye, lo prueba y lo mantiene listo para producción.

**Code Review (Revisión de Código)**
Cuando otro programador revisa el código de un compañero antes de que se una al proyecto principal. Se busca errores de lógica, malas prácticas y problemas de seguridad que las herramientas automáticas no detectan.

**CORS (Cross-Origin Resource Sharing)**
Mecanismo de seguridad que controla qué sitios web pueden hacer peticiones a tu servidor. Sin CORS, cualquier sitio podría pedir datos a tu API. Con CORS, solo los sitios autorizados pueden hacerlo.

**CSRF (Cross-Site Request Forgery)**
Ataque donde un sitio web malicioso engaña al navegador del usuario para que envíe peticiones falsas a otro sitio donde el usuario está logueado. Por ejemplo, un sitio malicioso podría ordenar una compra en tu nombre si estás logueado en una tienda online.

**CSS (Cascading Style Sheets)**
Lenguaje que define cómo se ve una página web (colores, fuentes, tamaños, posiciones). Es como la "ropa" que viste el HTML.

---

## D

**DAST (Dynamic Application Security Testing)**
Prueba de seguridad que ataca la aplicación mientras está corriendo. Es como enviar un "probador de intrusos" contra la web en funcionamiento para ver si puede entrar.

**Desarrollo Seguro**
Prácticas de seguridad integradas en todo el proceso de creación de software, no solo al final. Incluye revisión de código, pruebas automáticas y controles en cada fase.

**DFD (Diagrama de Flujo de Datos)**
Diagrama que muestra cómo viaja la información en un sistema: qué procesos la transforman, por dónde pasa y dónde se almacena. Es como un mapa del tráfico de datos.

**Docker**
Herramienta que empaqueta software en "contenedores" portátiles. Un contenedor incluye todo lo que el programa necesita para funcionar, sin importar la computadora donde se ejecute. Es como una caja de herramientas que funciona igual en cualquier lugar.

**DoS (Denial of Service)**
Ataque que busca dejar un servicio inaccesible. Un atacante envía tantas peticiones que el servidor se satura y deja de responder a usuarios legítimos.

---

## E

**Entorno de desarrollo**
Computadora o servidor donde los programadores escriben y prueban el código. No debería tener acceso directo a los datos reales de usuarios.

**Entorno de pruebas (Testing)**
Copia del sistema donde se prueban los cambios antes de pasarlos a producción. Es como un "ensayo general" antes del estreno.

**Entorno de producción**
El sistema real que usan los usuarios finales. Es donde vive el código que funciona "en serio". Los cambios aquí afectan a usuarios reales.

---

## G

**Gestión de secretos**
Práctica de guardar contraseñas, claves de API y otros datos sensibles de forma segura, sin escribirlos en el código fuente. Se usan herramientas como HashiCorp Vault o archivos `.env` excluidos del repositorio.

**Git**
Sistema de control de versiones. Guarda un historial de todos los cambios hechos al código. Si algo se rompe, puedes volver a una versión anterior. Es como un "deshacer" infinito para programadores.

**GitHub**
Plataforma web donde se almacenan repositorios de Git. Permite que múltiples programadores trabajen en el mismo proyecto, revisen cambios y discutan problemas.

---

## H

**Hardening**
Proceso de reducir la superficie de ataque de un sistema. Se eliminan servicios innecesarios, se cierran puertos que no se usan, se cambian contraseñas por defecto y se aplican parches de seguridad. Es como quitar cerraduras redundantes de una puerta.

**Hash**
Función matemática que convierte datos de cualquier tamaño en una cadena de longitud fija. No se puede revertir. Se usa para guardar contraseñas sin exponerlas. Ejemplo: "password123" se convierte en algo como "$2b$10$Xkj..." que es ilegible.

**HTML (HyperText Markup Language)**
Lenguaje que estructura el contenido de las páginas web. Los ataques XSS inyectan código HTML malicioso en páginas legítimas.

**HTTP / HTTPS**
Protocolos para comunicarse en internet. HTTP envía datos en texto plano (inseguro). HTTPS cifra los datos (seguro). La "S" significa "Secure".

---

## I

**ID (Identifier)**
Identificador único. En bases de datos, cada registro tiene un ID para poder encontrarlo. Ejemplo: cada usuario tiene un número de ID único.

**IDE (Integrated Development Environment)**
Programa donde los desarrolladores escriben, prueban y depuran el código. Ejemplos: VS Code, IntelliJ. Es como un "procesador de texto" pero para código.

**Integridad**
Que los datos no hayan sido modificados sin autorización. Si alguien cambia tu saldo bancario sin permiso, se violó la integridad.

**ISO (International Organization for Standardization)**
Organización internacional que crea estándares técnicos y de gestión. ISO 27001 es uno de sus estándares más importantes.

**ISO/IEC 27001:2022**
Estándar internacional que define requisitos para gestionar la seguridad de la información. Establece qué se debe hacer para proteger los datos de una organización.

**ISO/IEC 33000**
Estándar para evaluar y mejorar procesos de software. Define niveles de madurez (del 0 al 5) que miden qué tan bien gestionados están los procesos.

---

## J

**JWT (JSON Web Token)**
Formato seguro para transmitir información entre partes como un JSON firmado. Se usa mucho en autenticación web. Es como un "pase de identidad" digital que el servidor entrega al usuario y que éste muestra cada vez que necesita acceder.

---

## K

**KLOC (Kilo Lines of Code)**
Mil líneas de código. Se usa como unidad de medida para métricas de software. Por ejemplo, un proyecto de 50,000 líneas tiene 50 KLOC.

---

## M

**Mantenimiento (de software)**
Fase después del despliegue donde se aplican parches, se corrigen errores y se actualizan componentes para mantener el sistema seguro y funcionando.

**Métrica**
Indicador medible que permite evaluar algo. Ejemplo: "densidad de vulnerabilidades" mide cuántos problemas hay por cada 1000 líneas de código.

**MinIO**
Almacenamiento compatible con S3 (de AWS) que funciona como servicio local. Se usa para guardar archivos (imágenes, documentos) sin depender de la nube. Es como un "almacén de archivos" privado.

**MongoDB**
Base de datos NoSQL (no relacional). Almacena datos en formato JSON, lo que la hace flexible. Es como un archivador donde cada "archivo" puede tener estructura diferente.

**Mongoose**
Librería de JavaScript que facilita el trabajo con MongoDB. Agrega validaciones, esquemas y métodos útiles para interactuar con la base de datos.

---

## N

**Nginx**
Servidor web de alto rendimiento que funciona como "portero" de tráfico. Se usa como proxy inverso, balanceador de carga y servidor de archivos estáticos. Es como un director que dirige el tráfico al lugar correcto.

**NIST (National Institute of Standards and Technology)**
Instituto del gobierno de Estados Unidos que crea estándares técnicos y de seguridad. Su publicación SP 800-218 es un marco de referencia para desarrollo seguro de software.

**Node.js**
Entorno de ejecución de JavaScript en el servidor. Permite usar JavaScript (que normalmente solo funciona en el navegador) para crear servidores, APIs y backend.

**NoSQL**
Tipo de base de datos que no usa la estructura tradicional de tablas y filas. Es más flexible pero diferente a bases de datos como MySQL. Ejemplo: MongoDB.

**npm (Node Package Manager)**
Gestor de paquetes para JavaScript. Permite instalar librerías de otros programadores en tu proyecto. Es como una "tienda de aplicaciones" para código.

---

## O

**ODM (Object Data Mapper)**
Capa que traduce entre objetos de JavaScript y documentos de MongoDB. Mongoose es un ODM. Es como un "traductor" entre el código y la base de datos.

**OWASP (Open Worldwide Application Security Project)**
Organización sin fines de lucro que mantiene una lista de las 10 vulnerabilidades más críticas en aplicaciones web (OWASP Top 10). Es la referencia mundial en seguridad de aplicaciones.

**OWASP Top 10**
Lista de las 10 vulnerabilidades más peligrosas en aplicaciones web, actualizada periódicamente por OWASP. Incluye inyecciones SQL, fallos de control de acceso, etc.

---

## P

**PDCA (Plan-Do-Check-Act)**
Ciclo de mejora continua:
- **Plan**: Definir qué hacer.
- **Do**: Hacerlo.
- **Check**: Verificar si funcionó.
- **Act**: Mejorar basándose en lo aprendido.

Es como un ciclo de estudio: planear → ejecutar → revisar resultados → mejorar.

**Penetration Testing (Pentest)**
Prueba donde un especialista intenta hackear un sistema de forma controlada para encontrar vulnerabilidades. Es como contratar a un ladrón para que intente entrar a tu casa y te cuente por dónde lo logró.

**Pipeline CI/CD**
Tubería automatizada que lleva el código desde que se escribe hasta que se pone en producción. Cada paso tiene controles de seguridad: se construye, se prueba, se analiza y se despliega automáticamente.

---

## S

**SAST (Static Application Security Testing)**
Análisis de seguridad que examina el código fuente sin ejecutarlo. Busca patrones conocidos de vulnerabilidades directamente en el código. Es como revisar un plano antes de construir un edificio.

**SCA (Software Composition Analysis)**
Análisis de las librerías y componentes externos que usa tu proyecto. Busca vulnerabilidades conocidas en dependencias de terceros.

**SDLC (Software Development Life Cycle)**
Ciclo de vida del desarrollo de software: desde la idea hasta el mantenimiento. Es el proceso completo de cómo se crea un programa.

**Seguridad de la información**
Protección de la información para mantener su confidencialidad, integridad y disponibilidad. No es solo "tener antivirus" — es un sistema completo de reglas, controles y procesos.

**Seguridad por defecto**
Cuando un sistema viene configurado de forma segura sin que el usuario tenga que hacer nada extra. Ejemplo: un firewall que bloquea todo lo que no esté permitido explícitamente.

**SGSI (Sistema de Gestión de Seguridad de la Información)**
Sistema que una organización implementa para gestionar la seguridad de su información. ISO 27001 define los requisitos para crear un SGSI.

**Shift Left**
Mover las actividades de seguridad hacia las fases iniciales del desarrollo, en vez de dejarlas para el final. Es más barato corregir un problema en diseño que en producción.

**SMTP (Simple Mail Transfer Protocol)**
Protocolo para enviar correos electrónicos. Cuando tu aplicación envía un correo de verificación, usa SMTP. Es como el servicio postal de internet.

**SQL (Structured Query Language)**
Lenguaje para manipular bases de datos relacionales. "SELECT * FROM usuarios WHERE id = 1" es una consulta SQL. Las inyecciones SQL son ataques que aprovechan este lenguaje para acceder a datos no autorizados.

**SSDLC (Secure Software Development Life Cycle)**
SDLC con seguridad integrada en cada fase. No es un proceso separado, sino que la seguridad se añade al proceso normal de desarrollo.

**SSL (Secure Sockets Layer)**
Protocolo de seguridad (ya obsoleto) que se usaba para cifrar conexiones. Su sucesor es TLS. Juntos forman lo que conocemos como HTTPS.

**STRIDE**
Metodología para identificar amenazas en un sistema. Cada letra representa un tipo de amenaza:
- **S**poofing (suplantación)
- **T**ampering (manipulación)
- **R**epudiation (negación)
- **I**nformation Disclosure (exposición)
- **D**enial of Service (indisponibilidad)
- **E**levation of Privilege (escalada)

---

## T

**Tailwind CSS**
Framework de CSS que permite crear diseños escribiendo clases directamente en el HTML. Es como un conjunto de "ladrillos" de diseño predefinidos.

**Threat Modeling (Modelado de Amenazas)**
Proceso de identificar y evaluar las amenazas potenciales que podrían afectar a un sistema. Se hace antes de escribir código para anticipar problemas.

**TLS (Transport Layer Security)**
Protocolo de seguridad actual para cifrar conexiones en internet. Es la versión moderna de SSL. Cuando visitas un sitio HTTPS, TLS protege la comunicación.

**Token**
Secuencia de caracteres que representa algo (como una identidad o un permiso). Un JWT es un tipo de token usado para autenticación.

**TypeScript**
Lenguaje de programación que añade tipos de datos a JavaScript. Ayuda a encontrar errores antes de que el código se ejecute. Es como JavaScript con un "revisor ortográfico" integrado.

---

## V

**Vite**
Herramienta de desarrollo frontend que construye y sirve aplicaciones web de forma rápida. Es como un "servidor de desarrollo" que actualiza la pantalla al instante cuando cambias el código.

**Vulnerabilidad**
Debilidad en un sistema que un atacante podría explotar. Ejemplo: un formulario de login que no valida la contraseña podría permitir que alguien adivine credenciales.

**Vulnerability Assessment (Evaluación de Vulnerabilidades)**
Escaneo del sistema buscando vulnerabilidades conocidas. Se revisan dependencias, configuraciones, contenedores y código.

---

## W

**WAF (Web Application Firewall)**
Firewall que protege aplicaciones web filtrando el tráfico HTTP/HTTPS. Bloquea ataques como inyecciones SQL, XSS y otros antes de que lleguen a la aplicación.

---

## X

**XSS (Cross-Site Scripting)**
Ataque donde se inyecta código JavaScript malicioso en una página web vista por otros usuarios. Puede robar sesiones, contraseñas o datos. Se previene escapando el HTML de las entradas del usuario.

---

## Z

**ZAP (OWASP Zed Attack Proxy)**
Herramienta gratuita de OWASP para probar la seguridad de aplicaciones web. Envía ataques automatizados contra la aplicación para encontrar vulnerabilidades. Es como un "scanner de seguridad" para la web.
