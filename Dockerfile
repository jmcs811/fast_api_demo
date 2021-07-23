FROM python:3.7-alpine3.14

RUN pip install fastapi uvicorn pytest
RUN apk update
RUN apk add git gzip ca-certificates

EXPOSE 80

COPY ./app /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]