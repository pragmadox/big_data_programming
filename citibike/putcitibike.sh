#!/bin/bash
for file in /home/jay/Github/big_data_programming/citibike/files/*.csv; do
    echo "Removing the header from: $file"
    tail -n +2 "$file" > "${file}".tmp && mv "${file}".tmp "$file"
    echo "Moving $file to HDFS"
    hdfs dfs -put $file /user/jay/input
    rm $file
done
