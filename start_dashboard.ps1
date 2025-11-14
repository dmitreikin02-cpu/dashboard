# Производственный Дашборд - Запуск
# PowerShell скрипт

Write-Host ""
Write-Host "╔═══════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║           ЗАПУСК ПРОИЗВОДСТВЕННОГО ДАШБОРДА               ║" -ForegroundColor Cyan
Write-Host "╚═══════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

# Проверка Python
try {
    $pythonVersion = python --version 2>&1
    Write-Host "✅ Python найден: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Python не найден!" -ForegroundColor Red
    Write-Host ""
    Write-Host "📥 Установите Python с https://www.python.org/downloads/" -ForegroundColor Yellow
    Write-Host "   ⚠️  При установке поставьте галочку 'Add Python to PATH'" -ForegroundColor Yellow
    Write-Host ""
    pause
    exit 1
}

Write-Host ""

# Проверка файлов
if (-not (Test-Path "index.html")) {
    Write-Host "❌ Файл index.html не найден!" -ForegroundColor Red
    pause
    exit 1
}

if (-not (Test-Path "data.xlsx")) {
    Write-Host "⚠️  Файл data.xlsx не найден!" -ForegroundColor Yellow
    Write-Host "   Создаю тестовый файл..." -ForegroundColor Yellow
    python create_sample_data.py
    Write-Host ""
}

Write-Host "✅ Файлы найдены" -ForegroundColor Green
Write-Host ""

# Обновление дат
if (Test-Path "fix_dates.py") {
    Write-Host "📅 Обновляю даты в data.xlsx..." -ForegroundColor Cyan
    python fix_dates.py
    Write-Host ""
}

Write-Host "════════════════════════════════════════════════════════════" -ForegroundColor Gray
Write-Host ""
Write-Host "🚀 ЗАПУСК ВЕБ-СЕРВЕРА..." -ForegroundColor Green
Write-Host ""
Write-Host "   📊 Дашборд будет доступен по адресу:" -ForegroundColor White
Write-Host "   👉 http://localhost:8000" -ForegroundColor Cyan
Write-Host ""
Write-Host "   ⏹️  Для остановки нажмите Ctrl + C" -ForegroundColor Yellow
Write-Host ""
Write-Host "════════════════════════════════════════════════════════════" -ForegroundColor Gray
Write-Host ""

# Открываем браузер
Start-Sleep -Seconds 2
Start-Process "http://localhost:8000"

# Запускаем сервер
python -m http.server 8000
