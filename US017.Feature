Feature: Gestionar Agenda

    Scenario Outline: El vendedor se registra por primera vez en la página

        Given el vendedor se registra por primera vez
        And se encuentra en el menu principal
        When presiona la opcion <Ver clientes>
        And el sistema muestra una lista de usuarios registrados en la pagina que busquen productos del vendedor
        Then el sistema muestra una lista de clientes pero limitada  
        And muestra un mensaje que dice "Registrarse para seguir navegando"

        Examples:
            |Usuario|Opcion|Simulacion|
            |Juan|"Ver clientes|"El sistema muestra una lista de clientes interesados en comprar los productos del vendedor pero limitada por ser un usuario nuevo"| 

    Scenario Outline: El vendedor ya estaba registrado en la pagina 

        Given el vendedor entra a la pagina 
        And se encuentra en el menu principal
        When presiona la opcion <Ver clientes>
        And el sistema muestra una lista de usuarios registrados en la pagina que busquen productos del vendedor
        Then el sistema muestra una lista de clientes totalmente libre para interactuar con ella
        And muestra la lista actualizandose en tiempo real 

        Examples:
            |Usuario|Opcion|Simulacion|
            |Juan|"Ver clientes|"El sistema muestra una lista de clientes totalmente libre actualizandose en tiempo real"| 