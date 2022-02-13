FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ['python']
CMD ['app.py']
#FROM python:3-onbuild
#EXPOSE 5000
#CMD ["python", "./app.py"]