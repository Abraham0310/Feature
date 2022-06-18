Feature: Notificar al vendedor en caso de stock escaso

    Scenario Outline: El vendedor tiene un producto próximo a agotarse

        Given cierto producto se encuentra próximo a agotarse
        When la aplicacion se autorefresca y percibe la escasez de este producto
        Then el sistema manda una notificación al vendedor que le informa del próximo agotamiento de este producto

        Examples:

            |Usuario|Funcionalidad|Simulacion|
            |Luis|Notificacion en caso de escasez|"Cuando el sistema percibe la escasez de determinado producto mediante el inventario, el programa notifica a Luis en su celular y por medio de su correo"|
