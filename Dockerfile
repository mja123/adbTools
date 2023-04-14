FROM ubuntu:rolling

RUN apt-get update && apt-get install -y usbutils curl unzip openjdk-11-jdk

RUN curl https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -o cmd-tools

RUN unzip cmd-tools -d /setUp; rm cmd-tools; mv /setUp/cmdline-tools /setUp/sdk

RUN mkdir /setUp/sdk/tools

COPY ./moveFiles.sh /

RUN chmod 755 /moveFiles.sh; ./moveFiles.sh

RUN curl https://dl.google.com/android/repository/platform-tools_r34.0.1-linux.zip -o platform-tools

RUN unzip platform-tools -d /setUp/sdk

RUN export JAVA_HOME="/usr/lib/jvm/java-1.11.0-openjdk-arm64"








