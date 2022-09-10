#!/bin/bash
 
# Estutura de decisa para saber o arquivo existe
if [[ -f /etc/init.d/ntp ]]
then
    /etc/init.d/ntp start
else
    apt-get install ntp
    /etc/init.d/ntp start
fi
