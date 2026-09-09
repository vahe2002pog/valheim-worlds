@echo off
cd /d "C:\Users\gagik\AppData\LocalLow\IronGate\Valheim\worlds_local"

git add .
git diff --cached --quiet
if %errorlevel%==0 (
    echo Нет изменений, коммит не нужен. >> "C:\Users\gagik\autosave_log.txt"
) else (
    git commit -m "Auto commit %date% %time%" >> "C:\Users\gagik\autosave_log.txt" 2>&1
    git push >> "C:\Users\gagik\autosave_log.txt" 2>&1
)