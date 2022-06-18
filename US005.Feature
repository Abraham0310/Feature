Feature: Gestionar inventario

    Scenario Outline: El vendedor ingresa un inventario por primera vez

        Given el vendedor se encuentra en el Menu Principal
        When el vendedor presiona la opcion "Gestion de Inventario"
        Then la aplicacion lo redirige a la pestaña de "Gestion de Inventario"
        And se muestra el boton "Ingresar Inventario"
        And el vendedor al hacer click en el boton puede ingresar informacion detallada acerca de la cantidad de cierto producto

        Examples:

            |Usuario|Opcion|Simulacion|
            |Juan|Gestion de Inventario|"El sistema redirige a Juan a la pestaña de "Gestion de Inventario" y le permite ingresar un inventario mediante la opcion"Ingresar Inventario""|

    Scenario Outline: El vendedor cuenta con un inventario ya existente

        Given el vendedor se encuentra en el Menu Principal
        When el vendedor presiona la opcion "Gestion de Inventario"
        Then la aplicacion lo redirige a la pestaña de "Gestion de Inventario"
        And se muestra su inventario
        And en la esquina superior derecha esta presente el boton "Modificar" el cual permite realizar cambios a cantidades ya presentes en el inventario

        Examples:

            |Usuario|Opcion|Simulacion|
            |Pedro|Gestion de Inventario|"El sistema redirige a Pedro a la pestaña de "Gestion de Inventario" y le permite visualizar su inventario y modificarlomediante la opcion"Modificar""|
