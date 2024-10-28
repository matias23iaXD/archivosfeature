Feature: HU-1 Registro de Nuevo Usuario
  Como nuevo usuario, 
  quiero poder registrarme en la plataforma 
  para acceder a los módulos de capacitación en el cuidado de niños con problemas mentales.

  Scenario Outline: Registro en la plataforma
    Given el usuario está en la página principal de KidCare
    When hace clic en "Registrarse"
    And completa el formulario con <correo> y <contraseña>
    Then se muestra un <mensaje de confirmación>

    Examples:
      | correo                | contraseña | mensaje de confirmación                     |
      | usuario1@email.com    | pass123    | "Registro exitoso. Verifica tu correo."     |
      | usuario2@email.com    | pass456    | "Registro exitoso. Verifica tu correo."     |
      | usuario1@email.com    | pass789    | "Error: El correo ya está registrado."      |


Feature: HU-2 Selección de Cuidador Virtual
  Como usuario, 
  quiero poder seleccionar un cuidador virtual especializado en problemas mentales infantiles 
  para recibir la capacitación adecuada.

  Scenario Outline: Selección de cuidador virtual
    Given el usuario está en la plataforma KidCare
    When accede a la sección "Cuidadores"
    And selecciona al cuidador <nombre del cuidador>
    Then el sistema confirma la elección y muestra la disponibilidad de <nombre del cuidador>

    Examples:
      | nombre del cuidador |
      | Maria Sánchez       |
      | Pedro Gómez         |
      | Lucía Martínez      |

Feature: HU-3 Programación de Sesión de Capacitación
  Como usuario, 
  quiero poder programar una sesión de capacitación con el cuidador virtual 
  para aprender técnicas de cuidado de niños con problemas mentales.

  Scenario Outline: Programación de una sesión de capacitación
    Given el usuario selecciona al cuidador <nombre del cuidador>
    When elige una fecha <fecha> y hora <hora>
    And confirma la programación
    Then la sesión es registrada y el usuario recibe una confirmación de la sesión

    Examples:
      | nombre del cuidador | fecha       | hora  |
      | Maria Sánchez       | 10/11/2024 | 10:00 |
      | Pedro Gómez         | 11/11/2024 | 14:00 |
      | Lucía Martínez      | 12/11/2024 | 09:00 |

Feature: HU-4 Seguimiento de Progreso
  Como usuario, 
  quiero realizar un seguimiento de mi progreso 
  para ver cómo mejoro en las técnicas de cuidado de niños con problemas mentales.

  Scenario Outline: Visualización de progreso en la plataforma
    Given el usuario está en su perfil de KidCare
    When hace clic en "Progreso"
    Then ve una gráfica que muestra el progreso de <nombre del usuario> en el tiempo

    Examples:
      | nombre del usuario |
      | Juan Pérez         |
      | Ana López          |
      | Carlos Ruiz        |


Feature: HU- 5 Evaluación de Satisfacción
  Como usuario, 
  quiero poder evaluar mi experiencia en la plataforma KidCare 
  para proporcionar retroalimentación sobre el servicio recibido.

  Scenario Outline: Enviar evaluación de satisfacción
    Given el usuario completa una sesión de capacitación con el cuidador <nombre del cuidador>
    When selecciona "Evaluar"
    And elige una calificación de <calificación>
    And proporciona el comentario <comentario>
    Then se envía la evaluación y el usuario recibe una confirmación

    Examples:
      | nombre del cuidador | calificación | comentario                     |
      | Maria Sánchez       | 5            | "Muy útil y fácil de entender" |
      | Pedro Gómez         | 4            | "Buena capacitación, pero faltó tiempo" |
      | Lucía Martínez      | 3            | "Necesita más detalles en algunos temas" |

Feature: HU-6 Recomendaciones de Actividades Adicionales
  Como usuario, quiero recibir recomendaciones de actividades adicionales para complementar mi capacitación.

  Scenario Outline: Recomendación de actividades según el progreso del usuario
    Given el usuario <nombre del usuario> ha completado <cantidad de actividades> actividades
    When accede a la sección de progreso
    Then se muestra una lista de actividades recomendadas para mejorar en <área específica>

    Examples:
      | nombre del usuario | cantidad de actividades | área específica        |
      | Juan Pérez         | 5                       | manejo de ansiedad     |
      | Ana López          | 3                       | técnicas de comunicación |
      | Carlos Ruiz        | 7                       | control de emociones   |

Feature:HU-7  Configuración de Privacidad
  Como usuario, quiero poder ajustar la configuración de privacidad para controlar qué información comparto y con quién.

  Scenario Outline: Ajuste de configuración de privacidad
    Given el usuario <nombre del usuario> está en su perfil
    When selecciona "Configuración de Privacidad"
    And elige compartir solo <nivel de privacidad>
    Then la configuración se guarda y el usuario recibe una confirmación

    Examples:
      | nombre del usuario | nivel de privacidad             |
      | Juan Pérez         | datos visibles solo para cuidadores |
      | Ana López          | datos visibles para todos los usuarios |
      | Carlos Ruiz        | datos visibles solo para administradores |

Feature:HU-8 Revisión de Actividades Incorrectas
  Como usuario, quiero revisar las actividades que hice incorrectamente para mejorar mis habilidades y evitar errores futuros.

  Scenario Outline: Visualización y repetición de actividades incorrectas
    Given el usuario <nombre del usuario> completó una actividad con errores
    When revisa el resultado de la actividad
    Then ve un resumen de los errores cometidos en <actividad>
    And puede seleccionar "Repetir actividad" para intentarla de nuevo

    Examples:
      | nombre del usuario | actividad                          |
      | Juan Pérez         | manejo de situaciones de crisis    |
      | Ana López          | comunicación efectiva con niños    |
      | Carlos Ruiz        | técnicas de relajación y calma     |

Feature: HU-9 Notificaciones de Sesiones
  Como usuario, quiero recibir notificaciones recordatorias antes de mis sesiones reservadas, para no olvidarlas y poder asistir a tiempo.

  Scenario Outline: Envío de notificación antes de la sesión
    Given el usuario <nombre del usuario> tiene una sesión programada con <nombre del cuidador>
    When falta una hora para la sesión
    Then recibe una notificación recordatoria en su dispositivo

    Examples:
      | nombre del usuario | nombre del cuidador |
      | Juan Pérez         | Maria Sánchez       |
      | Ana López          | Pedro Gómez         |
      | Carlos Ruiz        | Lucía Martínez      |


Feature:HU-10 Acceso a la Biblioteca de Recursos Educativos
  Como usuario, quiero acceder a una biblioteca de recursos educativos sobre el manejo de problemas mentales en niños para aprender más sobre su cuidado.

  Scenario Outline: Visualización y descarga de recursos educativos
    Given el usuario <nombre del usuario> accede a la sección "Recursos Educativos"
    When selecciona la categoría <categoría de recursos>
    Then ve una lista de recursos disponibles en esa categoría
    And puede seleccionar "Descargar" para guardar el archivo en su dispositivo

    Examples:
      | nombre del usuario | categoría de recursos          |
      | Juan Pérez         | manejo de ansiedad infantil    |
      | Ana López          | estrategias de comunicación    |
      | Carlos Ruiz        | técnicas de relajación         |
