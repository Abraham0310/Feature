Feature: Validar datos en el Sistema de Perfiles

    Scenario Outline: Validar las credenciales de un comerciante

        Given Me encuentro en la pantalla de ingreso a la Gestion de Perfiles
        When Ingresa un Nombre de comerciante <Name>
        And Ingresa el Password <Password>
        And El comerciante hace click en el Boton Ingresar
        Then El sistema valida las credenciales
        And Deriva a la pantalla principal de Gestion de Perfiles
    
        Examples:
            | Name  ||    Password          || Simulacion                                                           |
            | Jesus || comercianteJesus123  || "El sistema mandará un mensaje de validación dentro de las 24 horas" |

    Scenario Outline: El comerciante se encuentra verificado

        Given Me encuentro en la pantalla de ingreso a la Gestion de Perfiles
        When Ingresa un nombre de comerciante <Name>
        And Ingresa el Password <Password>
        And El comerciante hace click en el botón Ingresar
        Then El sistema valida las credenciales
        And Deriva a la pantalla principal de Gestion de Perfiles
        And Y desbloquea las demás funciones en su totalidad.

        Examples:
            |   Name  ||    Password      || Simulación                                                                              |
            |  Renzo  || comercianteRenzo || "El sistema indicará que ya se encuentra verificado y desbloqueará las demás funciones" |