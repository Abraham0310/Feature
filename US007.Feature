Feature: Analizar finanzas

    Scenario Outline: El productor está registrado

        Given me encuentro en el Menú Principal
        When presiono la opción "Análisis de finanzas"
        Then  la aplicación me redirige a  "Análisis de finanzas"
        And me muestra mis finanzas a nivel histórico con un botón para seleccionar el intervalo de tiempo a analizar

        Examples:

            |Usuario|Opcion|Simulacion|
            |Martin|Analisis de finanzas|"El sistema redirige a Martin a la pestaña de "Analisis de finanzas" y le muestra sus finanzas a nivel historico junto con un boton que le permite analizar las finanzas en intervalo "|

    Scenario Outline: El productor no está registrado

        Given me encuentro en el Menú Principal
        When presiono la opción "Análisis de finanzas"
        Then Entonces la aplicación muestra el mensaje “Necesita estar registrado para tener acceso a esta función”
        And me redirige a al portal registro

        Examples:

            |Usuario|Opcion|Simulacion|
            |Moises|Analisis de finanzas|"El sistema redirige a Moises a la pestaña de "Analisis de finanzas" y le muestra un mensaje "Necesita estar registrado para tenen acceso a esta funcion"y lo devuelve al portal Registro"|
