Feature: Bienvenido al registro de usuario
    Scenario Outline: Registrar los datos del comerciante
        Given Me encuentro en la pantalla de registro 
        When Ingresa sus datos y un nombre de usuario único <Name>
        And Ingresa una Password <Password>
        And Hace click en el campo al cuál va a pertenecer
        And El hace click en el botón Registrar
        Then El sistema valida las credenciales 
        And Deriva a la Pantalla principal de la aplicación.
        Examples: 
            |Name|Password|
            |Mlucy|153drerea|
