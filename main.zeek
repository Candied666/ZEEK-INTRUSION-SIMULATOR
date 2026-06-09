# main.zeek
@load ./list.zeek

module DefensaBasica;

# El evento 'new_connection' se será la primera alerta en el momento en que Zeek detecte
# el primer paquete de un intento de conexión.
event new_connection(c: connection)
    {
    # Se extrae la IP de origen y el puerto de destino del flujo de red
    local ip_origen = c$id$orig_h;
    local puerto_destino = c$id$resp_p;

    if ( puerto_destino in puertos_sospechosos )
        {
        # Se imprime la alerta cuando se intente acceder a los puertos sospechosos a considerar
        print fmt("[ALERTA: La IP %s intentó conectarse al puerto en vigilancia %s", ip_origen, puerto_destino);
        }
    }