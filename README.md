# Book Management API

## Описание
CRUD-приложение для управления записями.

### Технологии
- Ruby on Rails
- SQLite (по умолчанию)

## Маршруты API

### 1. Получение всех записей
**GET** `/records`  
Возвращает список всех записей.

### 2. Создание новой записи
**POST** `/records`  
**Пример тела запроса**:
```json
{
  "record": {
    "field1": "Value1",
    "field2": "Value2",
    "field3": "Optional",
    "field4": "Optional long text"
  }
}
