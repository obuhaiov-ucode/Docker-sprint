FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y cowsay \
    && ln -s /usr/games/cowsay /usr/bin/cowsay \
    && rm -rf /var/lib/apt/lists/* /var/cache/* \
    && cowsay 'I am a horse!'

CMD cowsay "I am a horse!"
