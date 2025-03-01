FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y

RUN pip install -r requirements.txt

CMD ["python", "main.py"]
