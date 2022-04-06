FROM ubuntu:20.04
RUN apt update && apt install python3 -y && apt install python3-pip -y
RUN pip3 install flask
COPY main.py /opt
EXPOSE 8080
CMD ["python3", "/opt/main.py"]
