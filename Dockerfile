FROM ubuntu

COPY . /home/devops
WORKDIR /home/devops

ENV VIRTUAL_ENV=/opt/venv
RUN apt-get update && apt-get install -y python3 && apt install -y python3-psycopg2 && apt-get install -y python3-flask && apt-get install -y gunicorn3 && apt install -y python3-venv && python3 -m venv $VIRTUAL_ENV

ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip install bandit && pip install pycodestyle

ENTRYPOINT ["bash"]
