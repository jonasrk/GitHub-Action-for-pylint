FROM ubuntu:18.04

LABEL "com.github.actions.name"="GitHub Action for pylint"
LABEL "com.github.actions.description"="Run pylint commands"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"


FROM ubuntu:18.04

LABEL "com.github.actions.name"="GitHub Action for pylint"
LABEL "com.github.actions.description"="Run pylint commands"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"


RUN apt-get update
RUN apt-get -y install python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install --upgrade setuptools
RUN pip3 install pylint
RUN python3 --version ; pip3 --version ; pylint --version

RUN apt-get -y install python3-venv


COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
