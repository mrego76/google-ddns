#!/bin/sh

INTERVAL=${INTERVAL:-600}

while true
do
    RESPONSE=$(curl -s "https://${USERNAME}:${PASSWORD}@domains.google.com/nic/update?hostname=${HOSTNAME}")
    echo $(date): $RESPONSE
    sleep $INTERVAL
done
