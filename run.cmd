@echo off

if NOT EXIST Data (
   echo Error: Folder Data not found.
   goto :exit
)

cd _SysFiles_

node buzzde.js cut --input ../Data/story/source --output ../Data/story --type 0 || goto :exit
node buzzde.js check --data ../Data || goto :exit
pause

cd game-app
start buzzde-editor.exe
goto :end

:exit
pause
exit 1

:end