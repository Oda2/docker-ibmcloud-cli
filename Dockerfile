FROM alpine:3
LABEL maintainer="Global Health Monitor <app@ghm.world>"

WORKDIR /app

RUN apk update && apk add bash curl docker openssl
RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
RUN ibmcloud --version && \
    ibmcloud config --check-version=false && \
    ibmcloud plugin install -f kubernetes-service && \
    ibmcloud plugin install -f container-registry && \
    ibmcloud plugin install -f schematics && \
    ibmcloud plugin install -f cloud-object-storage

COPY bootstrap.sh .
RUN chmod a+x ./bootstrap.sh

ENTRYPOINT ["./bootstrap.sh"]

CMD ["/bin/bash"]
