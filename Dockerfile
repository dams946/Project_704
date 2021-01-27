FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y graphviz 
RUN apt-get install -y python3-pip python-dev build-essential
COPY . /graphviz
WORKDIR /graphviz
ENTRYPOINT [ "python3" ]
CMD ["tache3.py"]