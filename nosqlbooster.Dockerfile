FROM ubuntu:20.04

# ENV IDEA_JDK /usr/lib/jvm/temurin-17

ENTRYPOINT ["./opt/nosqlbooster4mongo-8.1.6/nosqlbooster4mongo"]

ADD https://s3.nosqlbooster.com/download/releasesv8/nosqlbooster4mongo-8.1.6.tar.gz /opt/nosqlbooster.tar.gz
RUN tar --extract --verbose --directory /opt --file /opt/nosqlbooster.tar.gz && rm -f /opt/nosqlbooster.tar.gz

RUN apt-get update && apt-get install -y libx11-6 libxext-dev libxrender-dev libxinerama-dev libxi-dev libxrandr-dev libxcursor-dev libxtst-dev 
RUN apt-get install -y libglib2.0-0
RUN apt-get install -y libnss3
RUN apt-get install -y libatk1.0-0
RUN apt-get install -y libatk-bridge2.0-0
RUN apt-get install -y libx11-xcb1
RUN apt-get install -y libgdk-pixbuf2.0-0
RUN apt-get install -y libgtk-3-0
RUN apt-get install -y libdrm2
RUN apt-get install -y libgbm1
RUN apt-get install -y libasound2

RUN adduser --disabled-password --gecos '' myuser
USER myuser
# libfuse-dev libglib2.0-0 libnss3
# RUN chmod a+x /opt/nosqlbooster.AppImage

# RUN /opt/nosqlbooster.AppImage --appimage-extract

# CMD ["./squashfs-root/AppRun"]
