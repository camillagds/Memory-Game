#!/bin/bash
max=3
for (( i=1; i <= $max; ++i ))
do
    echo "Test $i"
	curl -I $HOST
	docker-compose logs
done