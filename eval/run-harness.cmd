@echo off
REM Thin wrapper for harness.ps1
setlocal
pushd "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0harness.ps1" %*
set RC=%ERRORLEVEL%
popd
endlocal & exit /b %RC%