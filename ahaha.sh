#!/bin/sh
while :
do
    
    curl -o data.json  'http://localhost:19999/api/v1/data?chart=cgroup_9e8c78db400c.mem_usage&format=json'
    echo "Dowloaded stats from netstat"
    mongoimport --db testando --collection collection --file data.json 
    echo "Saved stats on mongo db"
    sleep 10
done
