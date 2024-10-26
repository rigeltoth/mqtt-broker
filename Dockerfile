FROM eclipse-mosquitto:latest

# Copiar el archivo de configuración y script de inicio
COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY start.sh /start.sh

# Dar permisos de ejecución al script de inicio
RUN chmod +x /start.sh

# El script start.sh se encargará de configurar los puertos correctamente
ENTRYPOINT ["/start.sh"]