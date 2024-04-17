FROM openjdk:9-jre
WORKDIR /teste-mapa
COPY teste-venda.jmx /teste-mapa/teste-venda.jmx

ARG JMETER_VERSION="5.6.3"
ARG JMETER_HOME="/opt/jmeter"

RUN wget http://apache.mirror.gtcomm.net//jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz \
  && tar -xvzf apache-jmeter-${JMETER_VERSION}.tgz \
  && rm apache-jmeter-${JMETER_VERSION}.tgz \
  && mv apache-jmeter-${JMETER_VERSION} ${JMETER_HOME}

# Uncomment some JVM Options
RUN sed -i '/RUN_IN_DOCKER/s/^#//g' /opt/jmeter/bin/jmeter \
  && sed -i '/VERBOSE_GC="-Xlog:gc/s/^#//g' /opt/jmeter/bin/jmeter

ENV JMETER_HOME ${JMETER_HOME}
ENV PATH ${JMETER_HOME}/bin:$PATH