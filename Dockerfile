FROM python:3.8

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

COPY . /app
WORKDIR /app

ENV PYTHONPATH "${PYTHONPATH}:/app"

CMD ["python", "-u", "rfxtrx2mqtt.py"]
