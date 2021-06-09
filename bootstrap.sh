#!/bin/bash

set -e

ibmcloud login --apikey "${IBM_CLOUD_API_KEY}" -r "${IBM_CLOUD_REGION}"
ibmcloud cr region-set "${IBM_CLOUD_REGION}"
ibmcloud cr login

/bin/bash