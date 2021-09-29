FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN mkdir /root/AliciaMusic
WORKDIR /root/AliciaMusic
COPY . /app/
RUN chmod +x /usr/local/bin/*
RUN pip3 install -U -r requirements.txt
CMD ["python3","-m","AliciaMusic"]