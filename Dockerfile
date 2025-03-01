FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y

RUN pip3 install --upgrade pip

RUN pip install -r requirements.txt

CMD ["python", "main.py"]
