FROM deepnote/python:3.8
RUN sudo apt-get -y update
RUN sudo apt-get install -y --fix-missing \
    apt-utils \
    graphviz \
    graphviz-dev \
    software-properties-common

RUN sudo apt-get update

RUN sudo add-apt-repository "deb [ arch=amd64 ] https://downloads.skewed.de/apt buster main"
RUN sudo apt-key adv --keyserver keys.openpgp.org --recv-key 612DEFB798507F25
RUN sudo apt-get update
RUN sudo apt-get install -y --allow-unauthenticated \
    python3-graph-tool \
    python3-cairo \
    python3-matplotlib
RUN sudo apt-get clean && rm -rf /tmp/* /var/tmp/*
