#!/bin/bash

service exim4 start 

trap "service exim4 stop; echo \"Correctly stopped.\"; exit 0" SIGINT SIGTERM

  while :
  do
          sleep 1
  done


