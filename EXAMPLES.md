# 📝 Примеры конфигураций

## Пример 1: Стандартная конфигурация (по умолчанию)

```javascript
const CONFIG = {
    DATA_PATH: 'data.xlsx',
    REFRESH_INTERVAL_MS: 60000,  // 60 секунд
    DATE_RANGE_DAYS: 7,
    TOP_N: 3,
    
    NORMS: {
        receiving: 120,
        placement: 250,
        picking: 300
    },
    
    COLORS: {
        LOW: '#ff3b3b',
        MID: '#ffcc00',
        HIGH: '#00b050'
    }
};
```

**Использование:**
- Обновление каждую минуту
- Анализ за последнюю неделю
- Стандартные нормативы
- Классическая цветовая схема

---

## Пример 2: Быстрое обновление для мониторинга в реальном времени

```javascript
const CONFIG = {
    DATA_PATH: 'data.xlsx',
    REFRESH_INTERVAL_MS: 10000,  // 10 секунд
    DATE_RANGE_DAYS: 1,          // Только сегодня
    TOP_N: 5,                    // Топ-5 вместо топ-3
    
    NORMS: {
        receiving: 120,
        placement: 250,
        picking: 300
    },
    
    COLORS: {
        LOW: '#ff3b3b',
        MID: '#ffcc00',
        HIGH: '#00b050'
    }
};
```

**Использование:**
- Оперативный мониторинг текущего дня
- Обновление каждые 10 секунд
- Расширенный список лучших сотрудников

---

## Пример 3: Месячный отчёт с редким обновлением

```javascript
const CONFIG = {
    DATA_PATH: 'data.xlsx',
    REFRESH_INTERVAL_MS: 300000, // 5 минут
    DATE_RANGE_DAYS: 30,         // Последние 30 дней
    TOP_N: 10,                   // Топ-10
    
    NORMS: {
        receiving: 120,
        placement: 250,
        picking: 300
    },
    
    COLORS: {
        LOW: '#ff3b3b',
        MID: '#ffcc00',
        HIGH: '#00b050'
    }
};
```

**Использование:**
- Аналитика за месяц
- Редкое обновление для экономии ресурсов
- Большой список лидеров

---

## Пример 4: Высокие стандарты производительности

```javascript
const CONFIG = {
    DATA_PATH: 'data.xlsx',
    REFRESH_INTERVAL_MS: 60000,
    DATE_RANGE_DAYS: 7,
    TOP_N: 3,
    
    NORMS: {
        receiving: 200,   // Повышенная норма
        placement: 400,   // Повышенная норма
        picking: 500      // Повышенная норма
    },
    
    COLORS: {
        LOW: '#ff3b3b',
        MID: '#ffcc00',
        HIGH: '#00b050'
    }
};
```

**Использование:**
- Для высокопроизводительных команд
- Стимулирование к повышению результатов

---

## Пример 5: Альтернативная цветовая схема (тёмная)

```javascript
const CONFIG = {
    DATA_PATH: 'data.xlsx',
    REFRESH_INTERVAL_MS: 60000,
    DATE_RANGE_DAYS: 7,
    TOP_N: 3,
    
    NORMS: {
        receiving: 120,
        placement: 250,
        picking: 300
    },
    
    COLORS: {
        LOW: '#c0392b',      // Тёмно-красный
        MID: '#f39c12',      // Оранжевый
        HIGH: '#27ae60'      // Тёмно-зелёный
    }
};
```

**Использование:**
- Для тёмных помещений
- Менее яркие цвета для комфорта глаз

---

## Пример 6: Пастельная цветовая схема

```javascript
const CONFIG = {
    DATA_PATH: 'data.xlsx',
    REFRESH_INTERVAL_MS: 60000,
    DATE_RANGE_DAYS: 7,
    TOP_N: 3,
    
    NORMS: {
        receiving: 120,
        placement: 250,
        picking: 300
    },
    
    COLORS: {
        LOW: '#ffb3ba',      // Светло-красный
        MID: '#ffffba',      // Светло-жёлтый
        HIGH: '#baffc9'      // Светло-зелёный
    }
};
```

**Использование:**
- Для офисных помещений
- Мягкие цвета без резких контрастов

---

## Пример 7: Только критичные показатели

```javascript
const CONFIG = {
    DATA_PATH: 'data.xlsx',
    REFRESH_INTERVAL_MS: 30000,  // 30 секунд
    DATE_RANGE_DAYS: 1,          // Только сегодня
    TOP_N: 3,
    
    NORMS: {
        receiving: 100,
        placement: 200,
        picking: 250
    },
    
    COLORS: {
        LOW: '#e74c3c',      // Яркий красный для привлечения внимания
        MID: '#95a5a6',      // Серый (норма - не требует внимания)
        HIGH: '#95a5a6'      // Серый (перевыполнение - тоже не критично)
    }
};
```

**Использование:**
- Фокус на проблемных зонах
- Только недовыполнение окрашено ярко

---

## Пример 8: Градация производительности

```javascript
const CONFIG = {
    DATA_PATH: 'data.xlsx',
    REFRESH_INTERVAL_MS: 60000,
    DATE_RANGE_DAYS: 7,
    TOP_N: 3,
    
    NORMS: {
        receiving: 120,
        placement: 250,
        picking: 300
    },
    
    COLORS: {
        LOW: '#e74c3c',      // Красный: < 100%
        MID: '#f39c12',      // Оранжевый: 100-180%
        HIGH: '#2ecc71'      // Зелёный: > 180%
    }
};
```

**Использование:**
- Более точная визуализация уровней
- Три явно различимых градации

---

## Пример 9: Недельный режим с подробной аналитикой

```javascript
const CONFIG = {
    DATA_PATH: 'data.xlsx',
    REFRESH_INTERVAL_MS: 120000, // 2 минуты
    DATE_RANGE_DAYS: 14,         // 2 недели
    TOP_N: 5,
    
    NORMS: {
        receiving: 120,
        placement: 250,
        picking: 300
    },
    
    COLORS: {
        LOW: '#ff3b3b',
        MID: '#ffcc00',
        HIGH: '#00b050'
    }
};
```

**Использование:**
- Сравнение с прошлой неделей
- Топ-5 для более полной картины

---

## Пример 10: Минимальное обновление для экономии трафика

```javascript
const CONFIG = {
    DATA_PATH: 'data.xlsx',
    REFRESH_INTERVAL_MS: 600000, // 10 минут
    DATE_RANGE_DAYS: 7,
    TOP_N: 3,
    
    NORMS: {
        receiving: 120,
        placement: 250,
        picking: 300
    },
    
    COLORS: {
        LOW: '#ff3b3b',
        MID: '#ffcc00',
        HIGH: '#00b050'
    }
};
```

**Использование:**
- Для медленных соединений
- Снижение нагрузки на сервер

---

## 🎨 Дополнительные цветовые палитры

### Палитра "Светофор"
```javascript
COLORS: {
    LOW: '#d32f2f',
    MID: '#fbc02d',
    HIGH: '#388e3c'
}
```

### Палитра "Океан"
```javascript
COLORS: {
    LOW: '#e53935',
    MID: '#1e88e5',
    HIGH: '#00acc1'
}
```

### Палитра "Закат"
```javascript
COLORS: {
    LOW: '#ff5252',
    MID: '#ff9800',
    HIGH: '#4caf50'
}
```

### Палитра "Минимализм"
```javascript
COLORS: {
    LOW: '#ef5350',
    MID: '#ffee58',
    HIGH: '#66bb6a'
}
```

---

## 📊 Примеры нормативов для разных типов складов

### Малый склад (50-100 сотрудников)
```javascript
NORMS: {
    receiving: 80,
    placement: 150,
    picking: 200
}
```

### Средний склад (100-300 сотрудников)
```javascript
NORMS: {
    receiving: 120,
    placement: 250,
    picking: 300
}
```

### Крупный склад (300+ сотрудников)
```javascript
NORMS: {
    receiving: 200,
    placement: 400,
    picking: 500
}
```

### Автоматизированный склад
```javascript
NORMS: {
    receiving: 300,
    placement: 600,
    picking: 800
}
```

---

## 💡 Советы по выбору конфигурации

1. **Интервал обновления:**
   - 10-30 сек: Реальное время (высокая нагрузка)
   - 60 сек: Стандартный мониторинг (рекомендуется)
   - 5-10 мин: Отчёты и аналитика (низкая нагрузка)

2. **Период анализа:**
   - 1 день: Текущая смена
   - 7 дней: Недельная статистика (рекомендуется)
   - 14-30 дней: Месячная аналитика

3. **Количество в топе:**
   - 3: Классический подход
   - 5: Расширенная мотивация
   - 10: Полная картина

4. **Нормативы:**
   - Устанавливайте реалистичные цели
   - Периодически пересматривайте
   - Учитывайте сезонность

---

**Рекомендация:** Начните со стандартной конфигурации и адаптируйте под ваши нужды постепенно.
