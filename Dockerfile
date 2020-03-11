FROM ubuntu:18.04

LABEL "com.github.actions.name"="GitHub Action for pylint"
LABEL "com.github.actions.description"="Run pylint commands"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"


RUN apt-get update
RUN apt-get -y install python3-pip
RUN apt-get -y install python3.7
RUN pip3 install --upgrade pip
RUN pip3 install --upgrade setuptools
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
RUN update-alternatives --set python /usr/bin/python3.7
RUN pip3 install pylint
RUN python --version ; pip3 --version ; pylint --version


COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
