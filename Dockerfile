FROM python:latest
EXPOSE 80
RUN apt-get -y update
RUN pip install pip --upgrade
WORKDIR /app
CMD ["python", "-m", "http.server", "80"]
