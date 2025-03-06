@echo off & setlocal enabledelayedexpansion
md myjpg 2>nul
for %%i in (*.webp,*.jfif,*.jpeg,*.bmp,*.gif) do (
	ffmpeg -i "%%i" "myjpg\%%~ni.jpg" -y
)