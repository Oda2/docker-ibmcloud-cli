# IBMCloud CLI

> A minimal container containing the CLI tools required for use in the IBMCloud

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/47592904f94c4b70b1b9d5fa83249bb6)](https://www.codacy.com/gh/Oda2/docker-ibmcloud-cli/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Oda2/docker-ibmcloud-cli&amp;utm_campaign=Badge_Grade)
![Main Branch](https://github.com/oda2/docker-ibmcloud-cli/actions/workflows/build.yml/badge.svg?branch=main)
[![GitHub license](https://img.shields.io/github/license/Oda2/docker-ibmcloud-cli)](https://github.com/Oda2/docker-ibmcloud-cli/blob/main/LICENSE)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oda2/ibmcloud-cli/latest)](https://hub.docker.com/r/oda2/ibmcloud-cli)

## Prerequisites

- Docker
- IBM API Key [IAM API Keys](https://cloud.ibm.com/iam/apikeys)

## Getting started

Launch the container as follows:

```sh
docker run -it \
  --name ibmcloud-cli \
  -e IBM_CLOUD_API_KEY=MY_API_KEY \
  -e IBM_CLOUD_REGION=MY_REGION \
  oda2/ibmcloud-cli sh
```

## Plugins Installed default

- kubernetes-service
- container-registry
- schematics
- cloud-object-storage

## How is this useful

Instead of using the ibmcloud login installation in our CI, this container will always provide the ready-to-use CLI.

### License
Licensed under [MIT](https://github.com/Oda2/docker-ibmcloud-cli/blob/main/LICENSE)