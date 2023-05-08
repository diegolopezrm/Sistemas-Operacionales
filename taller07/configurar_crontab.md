# Configurar crontab para ejecutar scripts automáticamente

1. Abre el archivo crontab con el siguiente comando:

crontab -e


2. Agrega las siguientes líneas al archivo crontab:

*/5 * * * * /ruta/del/script/genera_log.sh

/ruta/del/script/comprime_log.sh


3. Guarda el archivo y cierra el editor.

Crontab se actualizará automáticamente y ejecutará los scripts según el horario configurado.