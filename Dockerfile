FROM python:3.9-alpine
WORKDIR /app
COPY . /app
RUN apk update && apk upgrade
RUN apk add py3-pip
RUN pip install -r requirements.txt
ENV API_KEY="756b869a57005cce1c8f8ba8c9d0bf48"
ENTRYPOINT ["python", "main.py"]
 