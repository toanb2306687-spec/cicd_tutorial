FROM ubuntu:latest
LABEL maintainer="Nguyen Bao Toan <toanb2306687@student.ctu.edu.vn>"
RUN apt update -y && apt install -y python3-pip python3-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN pip3 install --break-system-packages -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
