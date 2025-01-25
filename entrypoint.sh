#!/bin/sh
set -e

cd /app

COMMAND=$1
MESSAGE_TYPE=$2

case $COMMAND in
  serialize)     
    protoc --encode=$MESSAGE_TYPE $MESSAGE_TYPE.proto < $MESSAGE_TYPE.textproto > $MESSAGE_TYPE.pb
    echo "$MESSAGE_TYPE serialized"
    ;;
  deserialize)
    protoc --decode=$MESSAGE_TYPE $MESSAGE_TYPE.proto < $MESSAGE_TYPE.pb > $MESSAGE_TYPE.txt
    echo "$MESSAGE_TYPE deserialized"
    ;;
  *)
    echo 'First argument must be "serialize" or "deserialize"'
    exit 1
    ;;
esac