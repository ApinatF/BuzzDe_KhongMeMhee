@echo off

node _SysFiles_/buzzde.js asset || goto :exit
goto :end

:exit
pause
exit 1

:end