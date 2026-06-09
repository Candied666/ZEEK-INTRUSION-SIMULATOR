# list.zeek
module DefensaBasica;

export {
    # En este apartado vamo a definir la lista de puertos a considerar (peligrosos).
    # El &redef nos permitirá agregar o cambiar la lista de puertos vigilados.
    const puertos_sospechosos: set[port] = { 6666/tcp, 4444/tcp } &redef;
}