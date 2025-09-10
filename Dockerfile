FROM python:3.13.7-slim-trixie

# Install app
ADD . /usr/src/gamedaybot
WORKDIR /usr/src/gamedaybot
RUN python3 setup.py install

# Launch app
CMD ["python3", "gamedaybot/espn/espn_bot.py"]
