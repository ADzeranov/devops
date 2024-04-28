FROM ubuntu

COPY . /home/Desktop/exam-devops
WORKDIR /home/Desktop/exam-devops

RUN apt-get update && apt-get install -y python3 && apt install -y python3-psycopg2 && apt-get install -y python3-flask && apt-get install -y gunicorn3

CMD ["python3","app.py"]
