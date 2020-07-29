#!/usr/bin/env bash
set -e

sleep 2m
echo "deployment started"
jar_id=`curl -X POST -H "Expect:" -F "jarfile=@/workdir/pricex-product-consumer/build/libs/pricex-product-consumer.jar" http://flink-jobmanager:8081/jars/upload | jq -r '.filename' | sed 's|.*/||'`
echo "deployment success"

curl -X POST http://flink-jobmanager:8081/jars/$jar_id/run
echo "Job submitted successfully"