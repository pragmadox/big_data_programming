#!/bin/bash

# This script will run the hadoop jar on citibike data.

hdfs dfs -rm -r output

hadoop jar /home/jay/Github/big_data_programming/citibikemapreduce/target/Citibike-1.0.jar Citibike /user/jay/input/* output
