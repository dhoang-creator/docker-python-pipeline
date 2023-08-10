FROM python:3.9

RUN pip install pandas

WORKDIR /app
COPY pipeline.py pipeline.py

ENV PORT=8080

EXPOSE 8080

ENTRYPOINT [ "python", "pipeline.py" ]