FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN wget https://raw.githubusercontent.com/anasty17/mirror-leech-telegram-bot/master/requirements-cli.txt -O requirements-cli.txt
RUN wget https://raw.githubusercontent.com/anasty17/mirror-leech-telegram-bot/master/requirements.txt -O requirements.txt
RUN pip3 install --no-cache-dir -r requirements-cli.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
