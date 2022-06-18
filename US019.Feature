Feature: Gestionar formas de pago

Scenario Outline:  El vendedor realiza el cambio de formas de pago por primera vez

Given el vendedor entra en el menu principal
And se encuentra en el menu de Formas de Pago
When presiona la opcion <Editar>
And el sistema muestra una lista de las formas de pago disponibles en la pagina
Then el sistema muestra una casilla que dice "Añadir formas de pago"  
And el sistema muestra un mensaje que dice "Que formas de pago quieres usar"

Examples:
       |Usuario|Opcion|Simulacion|
       |Daniel|"Editar"|"El sistema muestra una lista de las formas de pago disponibles en la pagina y una casilla que funciona para añadir estas"| 

Scenario Outline: El vendedor ya había editado las formas de pago

Given el vendedor entra en el menu principal
And se encuentra en el menu de Formas de Pago
When presiona la opcion <Editar>
And  el sistema muestra una lista de las formas de pago disponibles en la pagina
Then  el sistema muestra una casilla que dice "Añadir formas de pago" 
And el sistema muestra un mensaje que dice "Autocompletar o añadir una nueva"

Examples:
       |Usuario|Opcion|Simulacion|
       |Daniel|"Editar"|"El sistema muestra un mensaje que dice "Añadir formas de pago nuevas o Autocompletar""|
    