# Usar la imagen oficial de Eclipse Mosquitto
FROM eclipse-mosquitto:latest

# Copiar el archivo de configuración personalizado
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Exponer los puertos necesarios
EXPOSE 1883
EXPOSE 8883
EXPOSE 9001

# Crear volúmenes para datos y logs
VOLUME ["/mosquitto/data", "/mosquitto/log"]