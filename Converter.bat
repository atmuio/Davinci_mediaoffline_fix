@echo off
setlocal enabledelayedexpansion

:: Percorsi
set input_folder=%USERPROFILE%\Desktop\VideoP
set output_folder=%input_folder%\Export

:: Crea cartella Export se non esiste
if not exist "%output_folder%" (
    mkdir "%output_folder%"
)

:: Ciclo su tutti i file mp4 (puoi aggiungere altri formati se vuoi)
for %%F in ("%input_folder%\*.mp4") do (
    echo Converting: %%~nxF

    ffmpeg -i "%%F" -c:v dnxhd -profile:v dnxhr_hq -c:a copy "%output_folder%\%%~nF_converted.mov"

    echo.
)

echo Conversione completata!
pause
