@echo off
setlocal enabledelayedexpansion

REM Check if a file argument was provided
if "%~1"=="" (
    echo Usage: gtkwave.bat ^<waveform_file^>
    echo Example: gtkwave.bat simulation.vcd
    exit /b 1
)

REM Store the waveform file argument
set "WAVE_FILE=%~1"

REM Check if the file exists
if not exist "%WAVE_FILE%" (
    echo Error: File "%WAVE_FILE%" not found
    exit /b 1
)

REM Check if GTKWave is already running
tasklist /fi "imagename eq gtkwave.exe" 2>nul
REM | find /i "gtkwave.exe" >nul
if %errorlevel%==0 (
    echo GTKWave is already running. Bringing to foreground...
    
    REM Try to bring GTKWave window to foreground using PowerShell
    powershell -Command "Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::AppActivate('GTKWave')" 2>nul
    
    echo GTKWave window activated. Please load "%WAVE_FILE%" manually if needed.
) else (
    echo Starting GTKWave with "%WAVE_FILE%"...
    
    start gtkwave.exe "%WAVE_FILE%"
    echo GTKWave started successfully
)

endlocal