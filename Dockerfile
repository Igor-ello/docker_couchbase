# Используем официальный Python образ как базовый
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта в контейнер
COPY . /app

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Открываем порт 5000 для Flask
EXPOSE 5000

# Команда для запуска приложения
CMD ["python", "app/run.py"]
