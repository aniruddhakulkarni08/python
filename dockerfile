FROM python:3.8.5-alpine

RUN mkdir /work/
WORKDIR /work/

COPY ./src/requirements.txt /work/requirements.txt
RUN pip install -r requirements.txt

COPY ./src/ /work/
ENV FLASK_APP=server.py

CMD flask run -h 0.0.0.0 -p 3000