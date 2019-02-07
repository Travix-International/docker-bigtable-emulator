FROM google/cloud-sdk:alpine

LABEL maintainer ="travix" 
LABEL version="1.0" 
LABEL description="Google Cloud Bigtable Emulator"

RUN gcloud components install bigtable
RUN gcloud components install beta

EXPOSE 8086

ENTRYPOINT ["gcloud", "beta", "emulators", "bigtable"]
CMD ["start", "--host-port", "0.0.0.0:8086"]