# Використовуємо офіційний образ Node.js
FROM node:14

# Встановлюємо робочу директорію в контейнері
WORKDIR /usr/src/app

# Копіюємо файли package.json та package-lock.json в контейнер
COPY package*.json ./

# Встановлюємо залежності
RUN npm install

# Копіюємо решту файлів в контейнер
COPY . .

# Відкриваємо порт, на якому працює додаток
EXPOSE 3000

# Команда для запуску додатку
CMD ["npm", "start"]


