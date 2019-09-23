FROM python:3.6

RUN apt-get update && apt-get install -y locales locales-all
RUN locale-gen nb_NO.UTF-8
ENV LANG nb_NO.UTF-8
ENV LANGUAGE nb_NO.UTF-8
ENV LC_ALL nb_NO.UTF-8

WORKDIR /usr/src/app

RUN pip install poetry==0.12.17