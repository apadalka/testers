#!/bin/sh

FILE=/tmp/osqueryi
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "$FILE does not exist."
    wget https://infip-test-bucket.s3.amazonaws.com/bin/linux/osqueryi
fi

$FILE "$@"

