FROM python:3.7-slim-buster

LABEL maintainer = "Nicholas ST <nichostst@gmail.com>"
LABEL version = "0.1"

WORKDIR /reliability

COPY . /reliability

EXPOSE 8501
