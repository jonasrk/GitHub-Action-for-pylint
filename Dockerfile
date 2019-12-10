FROM ubuntu:18.04

LABEL "com.github.actions.name"="GitHub Action for pylint"
LABEL "com.github.actions.description"="Run pylint commands"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"


RUN apt-get update
RUN apt-get install python-pip
RUN pip install --upgrade pip
RUN pip install pylint
RUN python --version ; pip --version ; pylint --version

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
