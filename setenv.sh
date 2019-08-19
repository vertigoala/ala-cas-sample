#!/bin/sh
#
# CAS_SERVER must point to a cluster instance
#
export CAS_SERVER=pecus.serveo.net
export CAS_DOMAIN=serveo.net
export ALA_URL=https://$CAS_SERVER # traefik port
sed "s#\$ALA_URL#$ALA_URL#g" ./config/application-template.yml | \
 sed "s#\$CAS_DOMAIN#$CAS_DOMAIN#g" | \
 sed "s#\$CAS_SERVER#$CAS_SERVER#g" > ./config/application.yml
sed "s#\$ALA_URL#$ALA_URL#g" ./config/userdetails-config-template.properties > ./config/userdetails-config.properties
sed "s#\$ALA_URL#$ALA_URL#g" ./config/management-template.properties > ./config/management.properties
sed "s#\$ALA_URL#$ALA_URL#g" ./config/apikey-config-template.properties > ./config/apikey-config.properties
