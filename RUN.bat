@echo off
title ME 206 Unitree G1 Apple Throwing and Catching Simulation
cd /d "%~dp0"
echo ==============================================================================
echo   ME 206 Statics and Dynamics: Authentic Unitree G1 Humanoid Demonstration
echo   Hand-to-Hand Apple Throw and Opposite-Hand Catch
echo ==============================================================================
echo.
echo Checking Python environment...

set PYTHON_CMD=python
if exist "D:\Python_new\python.exe" (
    set PYTHON_CMD="D:\Python_new\python.exe"
)

echo Using Python: %PYTHON_CMD%
echo Launching MuJoCo interactive 3D physics simulation...
echo.

%PYTHON_CMD% controller.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Simulation exited with an error.
    echo Please ensure dependencies are installed: pip install -r requirements.txt
)

echo.
echo ==============================================================================
echo Simulation finished.
echo ==============================================================================
pause
