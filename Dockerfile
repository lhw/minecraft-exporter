FROM alpine:3.12

COPY requirements.txt minecraft_exporter.py /app/
WORKDIR /app
RUN apk add --no-cache python3 py3-pip\
    && pip3 install --no-cache-dir -r requirements.txt

USER guest

ENTRYPOINT ["python3","minecraft_exporter.py"]
