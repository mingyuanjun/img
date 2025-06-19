@echo off
setlocal enabledelayedexpansion

REM 检查AL目录是否存在
if not exist "AL\" (
    echo AL目录不存在！
    pause
    exit /b 1
)

REM 创建空文件（无空行）
break > AL.txt

REM 遍历AL目录并写入文件名（跳过空行）
set "firstLine=1"
for /f "delims=" %%f in ('dir /b /a-d "AL"') do (
    if defined firstLine (
        > AL.txt echo %%f
        set "firstLine="
    ) else (
        >> AL.txt echo %%f
    )
)

echo 已完成！所有文件名已保存到 AL.txt
pause