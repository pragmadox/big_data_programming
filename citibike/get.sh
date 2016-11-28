#!/bin/bash

wget https://s3.amazonaws.com/tripdata/201501-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201501-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201502-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201503-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201504-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201505-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201506-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201507-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201508-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201509-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201510-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201511-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201512-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201601-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201602-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201603-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201604-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201605-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201606-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201607-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201608-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201609-citibike-tripdata.zip
wget https://s3.amazonaws.com/tripdata/201610-citibike-tripdata.zip

unzip /home/jay/Github/big_data_programming/citibike/201501-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201502-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201503-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201504-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201505-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201506-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201507-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201508-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201509-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201510-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201511-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201512-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201601-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201602-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201603-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201604-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201605-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201606-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201607-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201608-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201609-citibike-tripdata.zip
unzip /home/jay/Github/big_data_programming/citibike/201610-citibike-tripdata.zip

sed '1d' /home/jay/Github/big_data_programming/citibike/201501-citibike-tripdata.csv > 201501.csv
rm /home/jay/Github/big_data_programming/citibike/201501-citibike-tripdata.csv
rm /home/jay/Github/big_data_programming/citibike/201501-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201501.csv /user/jay/input

sed '1d' /home/jay/Github/big_data_programming/citibike/201502-citibike-tripdata.csv > 201502.csv
rm /home/jay/Github/big_data_programming/citibike/201502-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201502-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201502.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201503-citibike-tripdata.csv > 201503.csv
rm /home/jay/Github/big_data_programming/citibike/201503-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201503-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201503.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201504-citibike-tripdata.csv > 201504.csv
rm /home/jay/Github/big_data_programming/citibike/201504-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201504-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201504.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201505-citibike-tripdata.csv > 201505.csv
rm /home/jay/Github/big_data_programming/citibike/201505-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201505-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201505.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201506-citibike-tripdata.csv > 201506.csv
rm /home/jay/Github/big_data_programming/citibike/201506-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201506-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201506.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201507-citibike-tripdata.csv > 201507.csv
rm /home/jay/Github/big_data_programming/citibike/201507-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201507-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201507.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201508-citibike-tripdata.csv > 201508.csv
rm /home/jay/Github/big_data_programming/citibike/201508-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201508-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201508.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201509-citibike-tripdata.csv > 201509.csv
rm /home/jay/Github/big_data_programming/citibike/201509-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201509-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201509.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201510-citibike-tripdata.csv > 201510.csv
rm /home/jay/Github/big_data_programming/citibike/201510-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201510-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201510.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201511-citibike-tripdata.csv > 201511.csv
rm /home/jay/Github/big_data_programming/citibike/201511-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201511-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201511.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201512-citibike-tripdata.csv > 201512.csv
rm /home/jay/Github/big_data_programming/citibike/201512-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201512-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201512.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201601-citibike-tripdata.csv > 201601.csv
rm /home/jay/Github/big_data_programming/citibike/201601-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201601-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201601.csv /user/jay/input

sed '1d' /home/jay/Github/big_data_programming/citibike/201602-citibike-tripdata.csv > 201602.csv
rm /home/jay/Github/big_data_programming/citibike/201602-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201602-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201602.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201603-citibike-tripdata.csv > 201603.csv
rm /home/jay/Github/big_data_programming/citibike/201603-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201603-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201603.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201604-citibike-tripdata.csv > 201604.csv
rm /home/jay/Github/big_data_programming/citibike/201604-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201604-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201604.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201605-citibike-tripdata.csv > 201605.csv
rm /home/jay/Github/big_data_programming/citibike/201605-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201605-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201605.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201606-citibike-tripdata.csv > 201606.csv
rm /home/jay/Github/big_data_programming/citibike/201606-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201606-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201606.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201607-citibike-tripdata.csv > 201607.csv
rm /home/jay/Github/big_data_programming/citibike/201607-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201607-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201607.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201608-citibike-tripdata.csv > 201608.csv
rm /home/jay/Github/big_data_programming/citibike/201608-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201608-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201608.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201609-citibike-tripdata.csv > 201609.csv
rm /home/jay/Github/big_data_programming/citibike/201609-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201609-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201609.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201610-citibike-tripdata.csv > 201610.csv
rm /home/jay/Github/big_data_programming/citibike/201610-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201610-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201610.csv /user/jay/input 

sed '1d' /home/jay/Github/big_data_programming/citibike/201601-citibike-tripdata.csv > 201601.csv
rm /home/jay/Github/big_data_programming/citibike/201601-citibike-tripdata.csv 
rm /home/jay/Github/big_data_programming/citibike/201601-citibike-tripdata.zip
hdfs dfs -put /home/jay/Github/big_data_programming/citibike/201601.csv /user/jay/input  

