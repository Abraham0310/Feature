Feature: Tiempo aproximado de una ruta 

Scenario Outline: El transportista se registra por primera vez a la aplicación 

Given el transportista se registra por primera vez
And se encuentra en el menu principal
When presiona la opcion <Tiempo Aproximado>
And el sistema muestra un mapa interactivo indicando la ubicacion actual del tranportista
Then el sistema muestra una opcion de poner la ubicacion a la cual se dirige el usuario 
And el sistema muestra un mensaje que dice "Necesitas registrarte para usar esta función"

Examples:
       |Usuario|Opcion|Simulacion|
       |Miguel|"Tiempo Aproximado|"El sistema muestra un mapa interactivo el cual esta restringida la opcion del tiempo aproximado por ser su primera vez visitando la pagina"|

Scenario Outline: El transportista ya estaba registrado

Given el transportista entra a la pagina 
And se encuentra en el menu principal
When presiona la opcion <Tiempo Aproximado>
And el sistema muestra un mapa interactivo indicando la ubicacion actual del transportista 
Then el sistema muestra una opcion de poner la ubicacion al a cual se dirige el usuario
And muestra el tiempo aproximado de la ruta que eligio el usuario en el mapa interactivo

Examples:
       |Usuario|Opcion|Simulacion|
       |Miguel|"Tiempo Aproximado|"El sistema muestra un mapa interactivo totalmente libre para usarlo"| 