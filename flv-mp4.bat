@echo off & setlocal enabledelayedexpansion
md mp4 2>nul
for %%i in (*.flv) do (
	ffmpeg -i "%%i" "mp4\%%~ni.mp4" -y
)