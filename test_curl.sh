#!/bin/bash
max=3
for (( i=1; i <= $max; ++i ))
do
    echo "Test $i"
	curl -I memorygame.local
	docker-compose logs
done