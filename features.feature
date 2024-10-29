Feature: HU01 - Registro de Usuario
  Como nuevo usuario, quiero poder registrarme en la plataforma de capacitación para acceder a los módulos de atención a niños con problemas mentales.

  Scenario Outline: Registro exitoso
    Given el usuario está en la página principal de KidCare
    When hace clic en "Registrarse"
    And completa el formulario con <correo> y <contraseña>
    Then se muestra el mensaje "Registro exitoso. Verifica tu correo."

  Scenario Outline: Error de registro por correo duplicado
    Given el usuario intenta registrarse con un <correo> ya existente
    Then se muestra el mensaje "Error: El correo ya está registrado."

    Examples:
      | correo              | contraseña |
      | usuario1@email.com  | pass123    |
      | usuario2@email.com  | pass456    |

Feature: HU02 - Iniciar Sesión
  Como usuario registrado, quiero poder iniciar sesión en la plataforma para acceder a mis datos y continuar con mi capacitación en el cuidado de niños con problemas mentales.

  Scenario Outline: Inicio de sesión exitoso
    Given el usuario ingresa su <correo> y <contraseña> correctos
    When presiona "Iniciar sesión"
    Then accede a su perfil y ve su progreso.

  Scenario Outline: Error en el inicio de sesión
    Given el usuario ingresa una <contraseña> incorrecta
    Then se muestra el mensaje de error "Contraseña incorrecta."

    Examples:
      | correo              | contraseña |
      | usuario1@email.com  | pass123    |
      | usuario2@email.com  | pass456    |

Feature: HU03 - Visualización de Perfil
  Como usuario, quiero poder ver y editar mi perfil para mantener actualizada mi información personal.

  Scenario: Ver perfil
    Given el usuario está logueado
    When hace clic en "Perfil"
    Then ve su información personal actual.

  Scenario: Editar perfil
    Given el usuario está en su perfil
    When hace clic en "Editar"
    And modifica su información
    Then guarda los cambios y ve una confirmación.

Feature: HU04 - Selección de Entrenador
  Como usuario, quiero poder seleccionar un entrenador virtual especializado en problemas mentales infantiles para recibir la capacitación más adecuada.

  Scenario Outline: Selección de entrenador
    Given el usuario accede a la sección "Entrenadores"
    When selecciona un entrenador <nombre del entrenador>
    Then el sistema confirma la selección y muestra la disponibilidad del entrenador.

    Examples:
      | nombre del entrenador |
      | Maria Sánchez         |
      | Pedro Gómez           |

Feature: HU05 - Programación de Sesión
  Como usuario, quiero poder programar una sesión de capacitación con el entrenador virtual para aprender sobre el manejo de niños con problemas mentales.

  Scenario Outline: Programación de sesión
    Given el usuario selecciona un entrenador <nombre del entrenador>
    When elige una <fecha> y <hora>
    And confirma la programación
    Then la sesión es registrada y el usuario recibe una confirmación.

    Examples:
      | nombre del entrenador | fecha       | hora  |
      | Maria Sánchez         | 10/11/2024 | 10:00 |
      | Pedro Gómez           | 11/11/2024 | 14:00 |

Feature: HU06 - Realización de Actividades
  Como usuario, quiero poder realizar actividades guiadas por el entrenador virtual para mejorar mis habilidades en el cuidado de niños con problemas mentales.

  Scenario Outline: Realización de actividades guiadas
    Given el usuario accede a "Actividades"
    When selecciona una actividad guiada <nombre de la actividad>
    Then completa la actividad y recibe retroalimentación.

    Examples:
      | nombre de la actividad           |
      | Manejo de situaciones de crisis  |
      | Comunicación efectiva            |

Feature: HU07 - Seguimiento de Progreso
  Como usuario, quiero realizar un seguimiento de mi progreso para ver cómo mejoro en las técnicas de atención a niños con problemas mentales.

  Scenario: Visualización de progreso
    Given el usuario está en su perfil
    When hace clic en "Progreso"
    Then ve una gráfica que muestra su progreso acumulado en el tiempo.

Feature: HU08 - Comunicación con el Entrenador
  Como usuario, quiero poder comunicarme con mi entrenador virtual para recibir orientación adicional y hacer preguntas sobre la capacitación.

  Scenario: Iniciar comunicación con el entrenador
    Given el usuario selecciona "Comunicar con entrenador"
    When envía un mensaje en el chat
    Then recibe una respuesta y una notificación de la respuesta.

Feature: HU09 - Evaluación de Satisfacción
  Como usuario, quiero poder evaluar mi experiencia en la plataforma y proporcionar retroalimentación sobre el servicio recibido.

  Scenario Outline: Evaluación de sesión de capacitación
    Given el usuario completa una sesión con un entrenador <nombre del entrenador>
    When selecciona "Evaluar"
    And elige una calificación y escribe un comentario <comentario>
    Then envía la evaluación y recibe una confirmación.

    Examples:
      | nombre del entrenador | comentario                      |
      | Maria Sánchez         | "Excelente capacitación"        |
      | Pedro Gómez           | "Faltaron algunos detalles"     |

Feature: HU10 - Gestión de Suscripción y Pagos
  Como usuario, quiero poder gestionar mi suscripción a la plataforma de capacitación para realizar pagos de forma fácil y segura.

  Scenario: Gestión de suscripción
    Given el usuario accede a "Suscripción"
    When selecciona "Modificar suscripción"
    Then puede ajustar su plan o cancelar su suscripción, recibiendo una confirmación de los cambios.
