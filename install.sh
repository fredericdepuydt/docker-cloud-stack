#!/bin/sh
############################################################################
## Raspberry-Pi installation script                                       ##
## Author: Frederic Depuydt                                               ##
## Mail: frederic.depuydt@outlook.com                                     ##
##                                                                        ##
## Executing this script requires the 'depuydt' shell libraries           ##
############################################################################

## INCLUDES
. /usr/local/lib/depuydt/sh/echoes.sh
. /usr/local/lib/depuydt/sh/files.sh

## TITLE
echo_section "DOCKER DEPLOYING:" "Cloud Stack (Installing)"

# Creating external networks
if [ -z "$(docker network list -f name=^web$ -q)" ]; then docker network create web; fi

docker-compose up --build --no-start
