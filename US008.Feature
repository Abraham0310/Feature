Feature: Visualizar lista de veterinarios

    Scenario Outline: La lista de veterinarios no está vacía

        Given me encuentro en el menú principal
        When presiono la opción "Lista de veterinarios"
        Then el sistema muestra una lista detallada de los veterinarios especializados en ovinos

        Examples:

            |Usuario|Opcion|Simulacion|
            |Randy|Lista de veterinarios|"Al hacer click en el boton lista de veterinarios se redirige a una pestaña en la qu ese enlistan todos los veterinarios disponibles"|

    Scenario Outline: La lista de veterinarios está vacía

        Given me encuentro en el menú principal
        When presiono la opción "Lista de veterinarios"
        Then el sistema muestra un mensaje “No se encontraron especialistas disponibles”

        Examples:

            |Usuario|Opcion|Simulacion|
            |Pepe|Lista de veterinarios|"Al hacer click en el boton lista de veterinarios se muestra un mensaje "No se encontraron especialistas disponibles""|
