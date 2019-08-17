FROM python:3.7.4-alpine

MAINTAINER Suraj < sdctkhs@gmail.com >

WORKDIR /home/app

ADD . .

RUN apk add gcc musl-dev libffi-dev openssl-dev
RUN pip install -r requirements.txt

EXPOSE 80 9000

CMD ["python", "server.py"]
