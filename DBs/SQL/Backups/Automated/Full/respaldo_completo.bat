@echo off
:: Encabezado personalizado en ASCII
echo "+============================================================================+";
echo "| Respaldo completo                                                          |";
echo "+============================================================================+";
echo  Recursos Materiales
echo  Respaldos Completos 
echo ==============================================

:: Desactivar impresión en terminal
@echo off

:: Variables de conexión
set DB_NAME=gym
set DB_USER=root
set DB_PASSWORD=1234
set MYSQLDUMP=C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe

:: Variables para la ruta y nombre del archivo
set BACKUP_DIR=C:\Respaldos
set BACKUP_FILE=%BACKUP_DIR%\backup_completo_%date:~-4,4%-%date:~-7,2%-%date:~-10,2%_%time:~0,2%-%time:~3,2%.sql

:: Crear directorio si no existe
if not exist %BACKUP_DIR% mkdir %BACKUP_DIR%

:: Capturar la hora de inicio
set START_TIME=%time%

:: Mensaje de inicio
echo ==============================================
echo Estado: Iniciando respaldo completo...
echo Fecha de Inicio: %date% %START_TIME%
echo ==============================================

:: Respaldo completo
"%MYSQLDUMP%" -u %DB_USER% -p%DB_PASSWORD% -P 3306 %DB_NAME% > "%BACKUP_FILE%"

:: Capturar la hora de término
set END_TIME=%time%

:: Calcular duración
for /F "tokens=1-4 delims=:.," %%a in ("%START_TIME%") do set /A START_SEC=(((%%a*60)+%%b)*60+%%c)
for /F "tokens=1-4 delims=:.," %%a in ("%END_TIME%") do set /A END_SEC=(((%%a*60)+%%b)*60+%%c)
set /A DURATION=%END_SEC%-%START_SEC%


:: Obtener tamaño del archivo
for %%A in ("%BACKUP_FILE%") do set SIZE=%%~zA

:: Mensaje final con los 6 elementos requeridos
echo ==============================================
echo Estado: Respaldo Completo Finalizado
echo Fecha de Inicio: %date% %START_TIME%
echo Fecha de Término: %date% %END_TIME%
echo Duración: %DURATION% segundos
echo Tamaño del Archivo: %SIZE% bytes
echo Ubicación del Archivo: %BACKUP_FILE%
echo ==============================================

:: Guardar salida en log
>> C:\Respaldos\log_respaldo.txt echo ==============================================
>> C:\Respaldos\log_respaldo.txt echo Estado: Respaldo Completo Finalizado
>> C:\Respaldos\log_respaldo.txt echo Fecha de Inicio: %date% %START_TIME%
>> C:\Respaldos\log_respaldo.txt echo Fecha de Término: %date% %END_TIME%
>> C:\Respaldos\log_respaldo.txt echo Duración: %DURATION% segundos
>> C:\Respaldos\log_respaldo.txt echo Tamaño del Archivo: %SIZE% bytes
>> C:\Respaldos\log_respaldo.txt echo Ubicación del Archivo: %BACKUP_FILE%
>> C:\Respaldos\log_respaldo.txt echo ==============================================

:: Pausa para ver salida
pause

