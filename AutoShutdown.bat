@echo off
chcp 65001
cls

PowerShell -Command "shutdown /s /t ([math]::Round(((Get-Date -Hour 18 -Minute 0 -Second 0) - (Get-Date)).TotalSeconds))"
if %ERRORLEVEL% neq 0 (
	echo.
	echo ==================================================
	echo [错误] 自动关机设置失败
	echo ==================================================
	echo.
	pause
)
