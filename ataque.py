# ataque.py
import socket
import time

IP_OBJETIVO = "127.0.0.1"
PUERTO_OBJETIVO = 6666

print(f"Iniciando simulación de ataque hacia {IP_OBJETIVO}:{PUERTO_OBJETIVO}")

for i in range(5):
    print(f"Enviando solicitud de conexión (Intento {i+1})...")
    try:
        # Socket TCP básico
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(0.5) 
        
        # No hay un servidor real recibiendo conexiones 
        # Por simulación zeek el paquete será detectado.
        s.connect((IP_OBJETIVO, PUERTO_OBJETIVO))
        s.close()
    except socket.error:
        pass
    
    time.sleep(1)

print("Ataque finalizado.")