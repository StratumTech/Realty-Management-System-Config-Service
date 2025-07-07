#!/bin/bash

generate_random_string() {
    local length=$1
    tr -dc 'a-zA-Z0-9' </dev/urandom | head -c "$length"
}

CONFIG_SERVICE_USERNAME=$(generate_random_string 5)
CONFIG_SERVICE_PASSWORD=$(generate_random_string 20)

cat <<EOF > .env
CONFIG_SERVICE_USERNAME=${CONFIG_SERVICE_USERNAME}
CONFIG_SERVICE_PASSWORD=${CONFIG_SERVICE_PASSWORD}
GIT_REPOSITORY_URI=
GIT_REPOSITORY_USERNAME=
GIT_REPOSITORY_PASSWORD=
EOF

echo "The .env file has been created successfully"