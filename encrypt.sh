#!/bin/bash

# encrypt HA configuration file (first time)
if [ ! -f ./config/configuration.sops.yaml ]; then
  sops -e ./config/configuration.yaml > ./config/configuration.sops.yaml
  rm ./config/configuration.yaml
fi
