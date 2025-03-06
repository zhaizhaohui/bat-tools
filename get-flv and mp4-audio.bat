@echo off & setlocal enabledelayedexpansion
rem -q:a表示质量（在LAME文档中定义[1]），质量分布范围为0~6，其中0表示高质量音频，6表示低质量音频。
for %%i in (*.mp4,*.flv) do (
	ffmpeg -i "%%i" -vn -c:a libmp3lame -q:a 1 "%%~ni.mp3"
)