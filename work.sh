#!/bin/bash

# Increase memory limit that JVM can use to avoid OOM error:
# 80% of your physical memory may be a proper ceiling that JVM can use.
# By default there, JVM initializes with 1g memory and can use 32g at most.
JVM_OPTIONS="-Xms24g -Xmx24g"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
JAR_FILE_PATH="${DIR}/FullNode.jar"
CONF_FILE_PATH="${DIR}/config.conf"

java ${JVM_OPTIONS} -jar ${JAR_FILE_PATH}  -c ${CONF_FILE_PATH}
