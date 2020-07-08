FROM openjdk:8
WORKDIR /workdir
RUN git clone https://github.com/tw-cbe-data-engineering/pricex-product-consumer
COPY deploy.sh /workdir/deploy.sh
CMD ["bash", "/workdir/deploy.sh"]

