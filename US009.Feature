Feature: Gestionar agenda

    Scenario Outline: El transportista tiene entregas programadas

        Given me encuentro en el menú principal
        When presiono la opción "Mi calendario"
        Then el sistema muestra un calendario con recordatorios y marcas en las fechas en las cuales se ha programado una entrega 
        And en la parte inferior aparece el número de pendientes

        Examples:

            |Usuario|Opcion|Simulacion|
            |Ali|Gestionar agenda|"Ali le da click en el boton mi calendario y le indica el numero de pendientes y fechas en las que tiene entregas programadas"|

    Scenario Outline: El transportista no tiene entregas programadas

        Given me encuentro en el menú principal
        When presiono la opción "Mi calendario"
        Then el sistema muestra un calendario sin ningún recordatorio ni marca, en la parte inferior indica 0 pendientes.

        Examples:

            |Usuario|Opcion|Simulacion|
            |Lucia|Gestionar agenda|"El sistema muestra el panel de "Mi calendario"y este se encuentra vacio"|