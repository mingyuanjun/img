@echo off
setlocal enabledelayedexpansion

REM ���ALĿ¼�Ƿ����
if not exist "AL\" (
    echo ALĿ¼�����ڣ�
    pause
    exit /b 1
)

REM �������ļ����޿��У�
break > AL.txt

REM ����ALĿ¼��д���ļ������������У�
set "firstLine=1"
for /f "delims=" %%f in ('dir /b /a-d "AL"') do (
    if defined firstLine (
        > AL.txt echo %%f
        set "firstLine="
    ) else (
        >> AL.txt echo %%f
    )
)

echo ����ɣ������ļ����ѱ��浽 AL.txt
pause