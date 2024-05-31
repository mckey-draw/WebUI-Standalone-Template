@echo off
REM 仮想環境の名前を指定します。
set VENV_NAME=venv

REM 仮想環境をアクティブにします。
call %VENV_NAME%\Scripts\activate

REM 仮想環境のアクティベートが成功したか確認します。
if errorlevel 1 (
    echo 仮想環境のアクティベートに失敗しました。
    pause
    exit /b 1
)

REM Python本体を指定します。
set PYTHON=%VENV_NAME%\Scripts\python.exe

REM コマンドラインを指定します。
set COMMANDLINE_ARGS=--port 7870

REM アプリケーションを実行します。
call %PYTHON% .\scripts\launch.py %COMMANDLINE_ARGS%

REM バッチファイルを終了します。
pause
exit /b 0
