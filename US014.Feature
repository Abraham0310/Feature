Feature: Bienvenido a la opción de búsqueda
    Scenario Outline: Búsqueda de proveedores
        Given Se encuentra en la pantalla de búsqueda
        When Digita en el campo de búsqueda proovedores
        And El hace click en el botón Buscar
        Then El sistema me redirige a una pantalla que contiene una lista de opciones que puedo elegir

        Examples:
        | Name | Opcion |
        | Rodrigo | Búsqueda de proveedores|