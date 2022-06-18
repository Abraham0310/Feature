Feature: Notificar sobre la ubicación del transportista al proveedor

    Scenario Outline: El proveedor localiza por GPS a los transportistas encargados y que indiquen que no tienen inconvenientes.

        Given el proveedor quiere saber sobre la ubicación del transportista encargado
        And y desea saber si tuvo un inconveniente o no.
        When el proveedor presiona el botón "Ubicación del transportista"  <Name>
        Then El sistema le mostrará una lsita de los transportistas que ha contratado
        And mostrará de cada uno, su respectiva ubicación exacta y/o aproximada.
    
        Examples:
            | Name ||    Opcion                      || Simulacion                                                           |
            | Juan || "Ubicación del transportista"  || "El sistema mostrará una lista de los transportistas contratados y su ubicación respectiva en ese momento." |

    Scenario Outline: El proveedor localiza por GPS a los transportistas encargados y se le indica que tuvieron inconvenientes para llegar.

        Given el proveedor quiere saber sobre la ubicación del transportista encargado
        And y desea saber si tuvo un inconveniente o no.
        When el proveedor presiona el botón "Ubicación del transportista"  <Name>
        Then El sistema le mostrará una lsita de los transportistas que ha contratado
        And mostrará de cada uno, su respectiva ubicación exacta y/o aproximada.
        And despliegará un mensaje indicando que el transportista indicó que tuvo un inconveniente durante su trayecto.
    
        Examples:
            |   Name    ||    Opcion                     || Simulación                                                                                                                                                                                     |
            |  Roxana   || "Ubicación del transportista" || "El sistema mostrará una lista de los transportistas contratados y su ubicación respectiva y le mandará un mensaje indicando que tuvo un inconveniente durante su trayecto y no podrá llegar." |