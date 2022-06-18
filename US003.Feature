Feature: Notificar sobre el estado de envío del producto

    Scenario Outline: El comerciante es notificado sobre el estado de envío y que está yendo de forma correcta.

        Given el comerciante quiere saber sobre estado de la entrega del producto solicitado
        And y desea saber en qué proceso se encuentra en dicho momento.
        When el comerciante presiona el botón "Productos por recibir"
        Then El sistema mostrará una lista de mis productos por recibir
        And su respectiva fase correspondiente del proceso de entrega del producto.
    
        Examples:
            | Name ||  Opcion                  || Simulacion                                                                                               |
            | Raul || "Productos por recibir"  || "El sistema despliegará una lista de los productos que tiene por recibir y su respectivo estatus actual. |

    Scenario Outline: El proveedor es notificado sobre un problema sobre el estado de envío de un producto.

        Given el comerciante quiere saber sobre el estado de entrega del producto solicitado
        And y desea saber en qué proceso se encuentra en dicho momento.
        When el comerciante presiona el botón "Productos por recibir".
        Then El sistema despliegará una lista de los productos por recibir 
        And le avisará donde uno de sus productos ha sufrido un inconveniente
        And le mostrará un mensaje "Hubo un problema durante el proceso de entrega del producto".

        Examples:
            |   Name    ||    Opcion               || Simulación                                                                                                                                          |
            |   Axel    || "Productos por Recibir" || "El sistema mostrará una lista de los productos por recibir e indicará si alguno de ellos ha tenido un inconveniente durante el proceso de entrega. |