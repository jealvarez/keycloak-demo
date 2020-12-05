#!/bin/bash

case $1 in

  keycloak)
    echo "starting keycloak..."
    docker-compose -f docker-compose-keycloak.yml up
    ;;
  
  graylog)
    echo "starting graylog..."
    docker-compose -f docker-compose-graylog.yml up    
    ;;

  grafana)
    echo "starting grafana..."
    docker-compose -f docker-compose-grafana.yml up
    ;;

  *)
    echo "Invalid option"
    ;;

esac
