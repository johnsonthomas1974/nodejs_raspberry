FROM resin/rpi-raspbian
RUN apt-get update -y
RUN apt-get install -y nodejs
RUN apt-get install -y npm
COPY . /src
RUN cd /src; npm install
EXPOSE 8080
CMD ["nodejs", "/src/index.js"]
