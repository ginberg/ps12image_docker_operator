FROM tercen/dartrusttidy:1.0.7

USER root
WORKDIR /operator

RUN apt-get update
RUN apt-get install -y libtiff-tools

RUN git clone https://github.com/ginberg/ps12image_operator.git

WORKDIR /operator/ps12image_operator

RUN echo 0.0.2 && git pull
RUN git checkout 0.0.2

RUN R -e "renv::restore(confirm=FALSE)"

ENV TERCEN_SERVICE_URI https://tercen.com

ENTRYPOINT [ "R","--no-save","--no-restore","--no-environ","--slave","-f","main.R"]
