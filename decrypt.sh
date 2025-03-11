#1/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    SOPS_AGE_KEY_FILE=/root/.config/sops/age/keys.txt
else
    SOPS_AGE_KEY_FILE=~/.sops/key.txt
fi

# decrypt HomeAssistant configuration file
sops -d ./config/configuration.sops.yaml > ./config/configuration.yaml
