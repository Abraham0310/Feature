Feature: Bienvenido al interfaz de validación de usuario
    Scenario Outline: Validación de datos de transportista
        Given Se encuentra en la pantalla de validación
        When Completa todos los datos que se le solicita
        And Sube una imagen de su DNI para confirmar su identidad
        And El hace click en el Botón Validar
        Then Se muestra mediante un MessageBox que sus datos fueron enviados y están en proceso de validación.

        Examples:
        |Name | Funcionalidad|
        | Carolina| Validar datos |