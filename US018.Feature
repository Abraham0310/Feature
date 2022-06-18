Feature: Gestionar Entregas

Scenario Outline:  El vendedor vendió correctamente su producto

Given el vendedor entra en el menu principal
And se encuentra en el menu de productos vendidos
When presiona la opcion <Productos Entregados>
And el sistema muestra una lista los productos entregados 
Then el sistema muestra una lista de los productos entregados y sus respectivos clientes  
And muestra un mensaje que dice "Estos son tus productos entregados"

Examples:
       |Usuario|Opcion|Simulacion|
       |Manuel|"Productos Entregados"|"El sistema muestra una lista de los productos entregados y sus respectivos clientes"| 

Scenario Outline: El vendedor tuvo un problema al momento de la venta

Given el vendedor entra en el menu principal
And se encuentra en el menu de productos vendidos
When presiona la opcion <Productos Entregados>
And el sistema muestra una lista los productos entregados 
Then el sistema muestra una lista de los productos entregados y sus respectivos clientes
And muestra las ventas las cuales tuvieron un error o algun problema al ser entregadas y sus respectivos clientes

Examples:
       |Usuario|Opcion|Simulacion|
       |Manuel|"Productos Entregados"|"El sistema muestra una lista de los productos entregados incluyendo los productos que tuvieron un problema al ser entregados"| 