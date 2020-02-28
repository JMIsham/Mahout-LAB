#!/bin/bash

#download the file
wget http://files.grouplens.org/datasets/movielens/ml-1m.zip
unzip ml-1m.zip

#Convert ratings.dat, trade “::” for “,”, and take only the first three columns:
cat ml-1m/ratings.dat | sed 's/::/,/g' | cut -f1-3 -d, > ratings.csv

#uplod to hadoop
hadoop fs -put ratings.csv /ratings.csv

#run the job
mahout recommenditembased --input /ratings.csv --output recommendations --numRecommendations 10 --outputPathForSimilarityMatrix similarity-matrix --similarityClassname SIMILARITY_COSINE

#get the output
hadoop fs -ls recommendations
hadoop fs -cat recommendations/part-r-00000 | head

# Python Server

#install dependancies 
sudo easy_install twisted
sudo easy_install klein
sudo easy_install redis


# start the redis cash
wget http://download.redis.io/releases/redis-2.8.7.tar.gz
tar xzf redis-2.8.7.tar.gz
cd redis-2.8.7
make
./src/redis-server &

#start the python server
twistd -noy hello.py &

#tests
curl localhost:8080/37
curl localhost:8080/54
curl localhost:8080/99
curl localhost:8080/1
