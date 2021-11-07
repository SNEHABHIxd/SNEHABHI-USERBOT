FROM SNEHABHIxd/SNEHABHI-USERBOT:main

# set timezone
ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \

    # cloning the repo and installing requirements.
    && git clone https://github.com/SNEHABHIxd/SNEHABHI-USERBOT.git /root/SNEHABHIxd/ \
    && pip3 install --no-cache-dir -r root/SNEHABHIxd/requirements.txt \
    && pip3 uninstall av -y && pip3 install av --no-binary av

# changing workdir
WORKDIR /root/SNEHABHIxd/

# start the bot
CMD ["bash", "resources/startup/startup.sh"]
