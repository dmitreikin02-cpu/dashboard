#!/usr/bin/env python3
"""
Скрипт для обновления дат в data.xlsx на актуальные
"""
import pandas as pd
from datetime import datetime, timedelta

print("🔧 Исправление дат в data.xlsx...")
print("=" * 60)

# Читаем файл
df = pd.read_excel('data.xlsx')

print(f"✓ Загружено строк: {len(df)}")

# Проверяем текущую дату
if 'Дата операций' in df.columns:
    print(f"\n📅 Старые даты:")
    old_dates = df['Дата операций'].unique()
    for date in old_dates[:3]:
        print(f"   - {date}")
    
    # Обновляем на сегодняшнюю дату
    today = datetime.now().strftime('%d.%m.%Y')
    df['Дата операций'] = today
    
    print(f"\n📅 Новая дата: {today}")
    
    # Сохраняем
    df.to_excel('data.xlsx', index=False, sheet_name='Данные')
    
    print(f"\n✅ Файл data.xlsx обновлен!")
    print(f"✅ Все даты установлены на: {today}")
    
    print("\n" + "=" * 60)
    print("📊 Статистика по операциям:")
    if 'Название операции' in df.columns:
        operations = df['Название операции'].value_counts()
        for op, count in operations.items():
            print(f"   - {op}: {count} записей")
    
    print("\n🎯 Готово! Теперь перезагрузите дашборд в браузере (Ctrl+Shift+R)")
    
else:
    print("⚠️ Колонка 'Дата операций' не найдена в файле!")
    print("Колонки в файле:", list(df.columns))
