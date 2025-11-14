@echo off
chcp 65001 >nul
color 0A
echo.
echo ╔═══════════════════════════════════════════════════════════╗
echo ║           ЗАПУСК ПРОИЗВОДСТВЕННОГО ДАШБОРДА               ║
echo ╚═══════════════════════════════════════════════════════════╝
echo.

REM Проверка наличия Python
where python >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Python не найден!
    echo.
    echo 📥 Установите Python:
    echo    https://www.python.org/downloads/
    echo.
    echo    ⚠️  При установке поставьте галочку "Add Python to PATH"
    echo.
    pause
    exit /b 1
)

echo ✅ Python найден
python --version
echo.

REM Проверка наличия файлов
if not exist "index.html" (
    echo ❌ Файл index.html не найден!
    pause
    exit /b 1
)

if not exist "data.xlsx" (
    echo ⚠️  Файл data.xlsx не найден!
    echo    Создаю тестовый файл...
    python create_sample_data.py
    echo.
)

echo ✅ Файлы найдены
echo.

REM Обновление дат
if exist "fix_dates.py" (
    echo 📅 Обновляю даты в data.xlsx...
    python fix_dates.py
    echo.
)

echo ════════════════════════════════════════════════════════════
echo.
echo 🚀 ЗАПУСК ВЕББСЕРВЕРА...
echo.
echo    📊 Дашборд будет доступен по адресу:
echo    👉 http://localhost:8000
echo.
echo    ⏹️  Для остановки нажмите Ctrl + C
echo.
echo ════════════════════════════════════════════════════════════
echo.

REM Открываем браузер через 2 секунды
start "" cmd /c "timeout /t 2 /nobreak >nul && start http://localhost:8000"

REM Запускаем сервер
python -m http.server 8000

pause
