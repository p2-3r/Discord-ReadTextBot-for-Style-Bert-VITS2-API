@echo off
cd %~dp0
chcp 65001 > NUL

if exist "downloads/PortableGit/bin/git.exe" (
    set GIT="downloads/PortableGit/bin/git.exe"
) else (
    set GIT="git"
)

%GIT% pull origin main
echo [33mCOMPLETE[0m^|The update is complete.
pause