##!/bin/bash

URL="https://github.com/ekhristin/shvirtd-example-python.git"
VARIBLE_DIR="/opt/"

if [ ! -d $VARIBLE_DIR ]; then
  echo "Каталог не существует. Создать!"
  sudo mkdir -p  $VARIBLE_DIR
fi

cd $VARIBLE_DIR || { echo "Не удалось перейти в каталог  $VARIBLE_DIR"; exit 1; }

if [ ! -d "$VARIBLE_DIR/shvirtd-example-python" ]; then
    echo "Клонирование репозитория!"
    sudo git clone "$URL"
fi
cd $VARIBLE_DIR/shvirtd-example-python || { echo "Не удалось перейти в каталог  $VARIBLE_DIR/shvirtd-example-python"; exit 1; }
if [ -f "compose.yaml" ]; then
  echo "Запуск проекта с помощью Docker Compose!"
  docker compose up -d --build
else
  echo "Файл compose.yaml не найден в каталоге проекта."
fi


# Запускаем проект с помощью Docker Compose
sudo docdocker compose -f compose.yaml up -d
