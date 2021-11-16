@echo off

set DIR=%~dp0

del "%DIR%system\*"  /f /s /q


for %%i in (.\system_excel\*.xlsx) do ".\tool\CfgExportor.exe" %%i %DIR%system\

copy "%DIR%system\*" "%DIR%..\..\system\*"

pause
