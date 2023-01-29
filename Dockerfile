
FROM python:3.8

RUN mkdir /app

WORKDIR /app

COPY requirements.txt .

RUN python -m pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "./src/main.py"]

EXPOSE 3000