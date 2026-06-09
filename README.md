# ZEEK-INTRUSION-SIMULATOR

---

## Requisitos del Sistema

* **Sistema Operativo:** Linux (Recomendado: Ubuntu 20.04 / 22.04 o GitHub Codespaces).
* **Zeek:** Versión `4.0` o superior.
* **Python:** Versión `3.6` o superior (*no requiere librerías externas*).

---

## Instalación de Zeek

**1. Descargar la llave de seguridad del repositorio oficial de Zeek:**

```bash
curl -fsSL "[https://download.opensuse.org/repositories/security:zeek/xUbuntu_$](https://download.opensuse.org/repositories/security:zeek/xUbuntu_$)(lsb_release -rs)/Release.key" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/security_zeek.gpg > /dev/null
En caso de que Zeek esté instalado:

Bash
sudo apt-get update
sudo apt-get install zeek -y

Ejecución del código
Ejecución de Zeek

(Terminal 1)

Bash
sudo /opt/zeek/bin/zeek -i lo main.zeek
Ejecución de Ataque simulado

(Terminal 2)

Bash
python3 ataque.py
Para limpiar los logs

Bash
rm *.log