@echo off
REM 仮想環境の名前を指定します。
set VENV_NAME=venv

REM Pythonの仮想環境を作成します。
python -m venv %VENV_NAME%

REM 仮想環境をアクティブにします。
call %VENV_NAME%\Scripts\activate

REM 仮想環境のアクティベートが成功したか確認します。
if errorlevel 1 (
    echo 仮想環境のアクティベートに失敗しました。
    pause
    exit /b 1
)

REM 必要なパッケージをインストールします。
pip install -r requirements.txt

REM PyTorchと関連パッケージをインストールします。
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121

REM 仮想環境の作成に成功したか確認します。
if errorlevel 1 (
    echo 仮想環境の作成に失敗しました。
    pause
    exit /b 1
)

REM 完了メッセージを表示します。
echo 仮想環境の作成とパッケージのインストールが完了しました。

REM バッチファイルを終了します。
pause
exit /b 0
