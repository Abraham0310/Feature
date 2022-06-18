Feature: Gestionar Entregas

Scenario Outline:  El transportista se registra por primera vez en la página

Given el vendedor entra en el menu principal
And se encuentra en el menu de Clientes
When presiona la opcion <Ver Clientes>      
And el sistema muestra una lista los usuarios registrados 
Then el sistema muestra una lista de clientes pero limitada   
And  el sistema muestra un mensaje que dice “Registrarse para seguir navegando”

Examples:
       |Usuario|Opcion|Simulacion|
       |Manuel|"Productos Entregados"|"El sistema muestra una lista de clientes registrados en la pagina pero limitada ya que es su primera vez en la pagina"| 

Scenario Outline:  El transportista ya estaba registrado    

Given el vendedor entra en el menu principal
And se encuentra en el menu de Clientes
When presiona la opcion <Ver Clientes>
And el sistema muestra una lista de los usuarios registrados en la pagina que soliciten los servicios del proveedor
Then el sistema muestra una casilla para interactuar completamente libre con ella" 
And muestra la lista de usuarios actualizandose en tiempo real

Examples:
       |Usuario|Opcion|Simulacion|
       |Manuel|"Productos Entregados"|"El sistema muestra una lista de clientes totalmente libre actualizandose en tiempo real"|