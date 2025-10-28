@echo off

set "SCRIPT_DIR=%~dp0"

python "%SCRIPT_DIR%audio-best-quality.py" %*
