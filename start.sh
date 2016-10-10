#!/usr/bin/env bash

JAR=`ls -1 swarm-client-*.jar | tail -n 1`
  
exec java ${JAVA_OPTS} -jar ${JAR} "$@"
