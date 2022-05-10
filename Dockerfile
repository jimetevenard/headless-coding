FROM accetto/ubuntu-vnc-xfce-nodejs-g3:vscode-firefox

ARG INTELLIJ_VERSION="ideaIC-2022.1"
ARG JAVA_JDK_VERSION="openjdk-17-jdk-headless"

USER root

# Install Java + Maven
# ====================
RUN apt update && apt install -y ${JAVA_JDK_VERSION} maven

# Install IntelliJ IDEA
# =====================
RUN mkdir /opt/idea && cd /opt/idea \
    && wget https://download-cdn.jetbrains.com/idea/${INTELLIJ_VERSION}.tar.gz \
    && tar -xvf ${INTELLIJ_VERSION}.tar.gz \
    && rm *.tar.gz \
    && mv idea-IC-* intellij \
    && chmod +x /opt/idea/intellij/bin/idea.sh
COPY --chown=headless:root IntelliJ.desktop /home/headless/Desktop/
RUN chmod +x /home/headless/Desktop/IntelliJ.desktop

USER 1001