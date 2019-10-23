#!/usr/bin/env bash

JAVA_OPTS="$JAVA_OPTS"

exec java -server -Djava.security.egd=file:/dev/./urandom $JAVA_OPTS -jar /app.jar