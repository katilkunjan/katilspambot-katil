FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/bhumiharsaurabh/saurabhspambot.git/root/saurabhspambot
#working directory 
WORKDIR /root/saurabhspambot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/saurabhspambot/bin:$PATH"

CMD ["python3","-3","saurabhspambot"]
