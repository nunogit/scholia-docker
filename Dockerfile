FROM ubuntu:18.04

RUN apt-get update

RUN apt-get -y install git
#RUN apt-get -Y install
RUN apt-get -y install python3-pip


RUN mkdir /scholia/
WORKDIR /scholia/

RUN git clone https://github.com/fnielsen/scholia.git .

RUN pip3 install -r requirements.txt

EXPOSE 8100

ENTRYPOINT ["python3","runserver.py"]