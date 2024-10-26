#!/bin/sh

# Asegurarse de que PORT está definido
if [ -z "$PORT" ]; then
    export PORT=1883
fi

# Reemplazar el puerto en la configuración
sed -i "s/\${PORT}/$PORT/g" /mosquitto/config/mosquitto.conf

# Iniciar Mosquitto con la nueva configuración
exec /usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf