Feature: Mapeo automático

    Scenario Outline: El transportista cuenta con una conexión a internet

        Given tengo acceso a internet
        When ingreso a la función GPS en la aplicación 
        Then el sistema muestra la ruta mas corta, rutas alternas, zonas con más tráfico,etc

        Examples:

            |Usuario|Opcion|Simulacion|
            |Ramiro|Gps Integrado|"El sistema le indica a Ramiro las rutas mas cortas, rutas alternas, zonas con trafico , etc"|

    Scenario Outline: El transportista no cuenta con una conexión a internet

        Given que no tengo acceso a internet
        When ingreso a la función GPS en la aplicación 
        Then el sistema muestra solo la ruta más conveniente que debe ser descargada antes de iniciar el viaje cuando tenga conexión a internet

        Examples:

            |Usuario|Opcion|Simulacion|
            |Susana|Gps Integrado|"Susana descarga la ruta con indiciones pero no se le brinda informacion en tiempo real"|