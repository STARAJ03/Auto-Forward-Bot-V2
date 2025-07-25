FROM python:3.10-slim

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /fwdbot
WORKDIR /fwdbot
COPY . .
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"] 
#CMD ["/bot.py"]
# Copy your app code (including main.py)
#COPY . .
# Run main.py when container starts
#CMD ["python3", "main.py"]
