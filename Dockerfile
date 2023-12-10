FROM python:3.8

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 23333

ENV NAME World

CMD ["python", "app.py", "--host=0.0.0.0", "--port=23333"]