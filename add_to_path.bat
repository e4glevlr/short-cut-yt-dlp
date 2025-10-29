@echo off
set "CURRENT_DIR=%CD%"

set "REG_KEY=HKEY_CURRENT_USER\Environment"
set "USER_PATH="
FOR /F "tokens=2,*" %%G IN ('reg query "%REG_KEY%" /v PATH 2^>nul') DO (
    set "USER_PATH=%%H"
)

if not defined USER_PATH (
    set "USER_PATH="
)

set "CHECK_PATH=;%USER_PATH%;"
echo "%CHECK_PATH%" | findstr /I /C:";%CURRENT_DIR%;" > nul

if %ERRORLEVEL% == 0 (
  echo "already in PATH."
) else (
  echo "Dang them %CURRENT_DIR% vao PATH..."
  if defined USER_PATH (
      setx PATH "%CURRENT_DIR%;%USER_PATH%"
  ) else (
      setx PATH "%CURRENT_DIR%"
  )
  echo "added in to PATH"
  echo "Please restart your terminal for changes to take effect."
)