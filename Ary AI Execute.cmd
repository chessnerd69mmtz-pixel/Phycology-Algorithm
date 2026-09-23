@echo off
setlocal EnableExtensions EnableDelayedExpansion
cd /d "%~dp0"
title Ary AI Execute - Local WhatsApp AI

rem API setup MUST happen before the server starts. This prevents the WhatsApp
rem QR/session startup from appearing before the user has configured providers.
if not exist ".env" (
  call "%~dp0SET AI API KEYS.cmd"
  if errorlevel 1 exit /b 1
) else (
  echo Existing AI API configuration found in .env.
  echo.
)

call "%~dp0RUN-COPILOT.cmd" NO_KEY_SETUP
exit /b %errorlevel%
