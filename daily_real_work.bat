@echo off
setlocal EnableExtensions

 === CONFIG ===
set REPO_DIR=CUsersHPDownloadsgithub-activity-generator-maingithub-activity-generator-main
set LOCK_FILE=%REPO_DIR%.lastrun
set LOG_FILE=%REPO_DIR%daily-log.md

 === CHECK IF ALREADY RUN TODAY ===
for f tokens=1 %%i in ('date t') do set TODAY=%%i
if exist %LOCK_FILE% (
        for f %%i in ('type %LOCK_FILE%') do set LAST=%%i
        if i %LAST%==%TODAY% (
                echo Already logged today. Exiting.
                exit b 0
        )
)

 === ASK FOR TODAY'S WORK ===
cd d %REPO_DIR%
set p NOTE=What did you work on today 
if %NOTE%== set NOTE=quick touch

 === APPEND, COMMIT, PUSH ===
echo.  %LOG_FILE%
echo ### %date% - %NOTE%  %LOG_FILE%
git add %LOG_FILE%
git commit -m Daily work %date% - %NOTE%
git push origin main

 === SAVE TODAY'S DATE SO WE DON'T RUN AGAIN ===
echo %TODAY%  %LOCK_FILE%

echo Done! Green square incoming.
timeout t 3 nul