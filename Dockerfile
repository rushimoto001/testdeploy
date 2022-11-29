FROM anasty17/mltb:latest

RUN export TERM=xterm
RUN TERM=xterm

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt update && apt install wget sudo curl python3 python3-pip apt-utils git zip unzip curl tar systemctl -y

RUN wget https://raw.githubusercontent.com/weebzone/WZML/master/requirements-cli.txt -O requirements-cli.txt
RUN wget https://raw.githubusercontent.com/weebzone/WZML/master/requirements.txt -O requirements.txt

RUN pip3 install --no-cache-dir -r requirements-cli.txt
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install megasdkrestclient

RUN apt-get update && apt-get upgrade -y
RUN apt -qq update --fix-missing && \
    apt -qq install -y \
    mediainfo
    
RUN ls
RUN df -h
RUN free -h

RUN sudo apt install -y software-properties-common gnupg apt-transport-https ca-certificates
RUN sudo apt install -y mongodb



COPY . .

CMD ["bash", "start.sh"]
