FROM python:latest
EXPOSE 80
RUN apt-get -y update
RUN pip install pip --upgrade
WORKDIR /app
ADD index.html .
ADD requirements.txt .
RUN pip install -r requirements.txt
CMD ["python", "-m", "http.server", "80"]
