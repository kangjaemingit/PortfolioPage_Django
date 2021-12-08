From python:3.8.0-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUMBUFFERED 1

RUN apk update
RUN apk add postgresql-dev gcc python3-dev musl-dev zlib-dev jpeg-dev libffi-dev

COPY . /usr/src/app

RUN python -m pip install --upgrade pip
RUN python -m pip install -r requirements.txt