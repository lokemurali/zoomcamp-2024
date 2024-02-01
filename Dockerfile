FROM python:3.9

RUN pip install pandas

WORKDIR /app

COPY pipe.py ./pipe.py

ENTRYPOINT [ "python", "pipe.py" ]