#1/bin/bash

SOPS_AGE_KEY_FILE=/root/.config/sops/age/keys.txt

# decrypt HomeAssistant configuration file
sops -d ./config/configuration.sops.yaml > ./config/configuration.yaml
