@echo off
setlocal EnableExtensions
cd /d "%~dp0"
title Ary AI - AI API Key Setup

echo.
echo ==============================================
echo          ARY AI - AI PROVIDER SETUP
echo ==============================================
echo.
echo Enter your API keys below. They are saved ONLY in:
echo   %~dp0.env
echo.
echo Do NOT paste API keys into the browser or chat.
echo.

set "UNLIMITLESS_KEY="
set "MISTRAL_KEY="
set "GROQ_KEY="

if exist ".env" (
  echo An existing .env file was found.
  echo It will be updated with the values you enter below.
  echo.
)

set /p "UNLIMITLESS_KEY=Unlimitless API key (press Enter to leave blank): "
echo.
set /p "MISTRAL_KEY=Mistral API key (press Enter to leave blank): "
echo.
set /p "GROQ_KEY=Groq API key (press Enter to leave blank): "
echo.

>".env.tmp" echo # Ary AI local provider configuration
>>".env.tmp" echo # Keep this file private. It contains API credentials.
>>".env.tmp" echo AI_PROVIDER=auto
>>".env.tmp" echo UNLIMITLESS_API_KEY=%UNLIMITLESS_KEY%
>>".env.tmp" echo MISTRAL_API_KEY=%MISTRAL_KEY%
>>".env.tmp" echo MISTRAL_MODEL=mistral-small-latest
>>".env.tmp" echo GROQ_API_KEY=%GROQ_KEY%
>>".env.tmp" echo GROQ_MODEL=openai/gpt-oss-120b
>>".env.tmp" echo MISTRAL_TIMEOUT_MS=90000
>>".env.tmp" echo GROQ_TIMEOUT_MS=90000

move /y ".env.tmp" ".env" >nul

echo.
echo API configuration saved locally.
echo.
echo IMPORTANT: Unlimitless currently provides an MCP/context platform rather than a
echo documented chat-completion endpoint, so Ary AI does not invent an endpoint for it.
echo Mistral is the first generation provider, followed by Groq as fallback.
echo.
pause
exit /b 0
