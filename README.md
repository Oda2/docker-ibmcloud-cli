# IBMCLOUD CLI

> A minimal container containing the CLI tools required for use in the IBMCloud

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

## How is this useful?

Instead of using the ibmcloud login installation in our CI, this container will always provide the ready-to-use CLI.