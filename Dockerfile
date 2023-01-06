FROM python:3.9-alpine

RUN pip install -U paramiko

COPY entrypoint.py /app/entrypoint.py
RUN chmod a+x /app/entrypoint.py

ENTRYPOINT ["python3", "/app/entrypoint.py"]
