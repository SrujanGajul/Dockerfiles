FROM eclipse-temurin:17

ENV IDEA_JDK /usr/lib/jvm/temurin-17

ADD https://download.jetbrains.com/idea/ideaIU-2023.3.3.tar.gz /opt/idea.tar.gz

RUN apt-get update && apt-get install -y libx11-6 libxext-dev libxrender-dev libxinerama-dev libxi-dev libxrandr-dev libxcursor-dev libxtst-dev 
RUN tar --extract --verbose --directory /opt --file /opt/idea.tar.gz && rm -rf /opt/idea-IU-233.14015.106/jre64 && rm -f /opt/idea.tar.gz

ENTRYPOINT ["/opt/idea-IU-233.14015.106/bin/idea.sh"]