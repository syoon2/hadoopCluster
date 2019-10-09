Setup for Hadoop in Docker containers

```bash
./get-sw.sh

docker-compose up --build
docker-compose run gateway hdfs dfs -copyFromLocal bigfile /bigfile1

docker-compose run yarn-nodemanager-4 /opt/hadoop/bin/yarn nodemanager
docker-compose run hdfs-datanode-4 /opt/hadoop/bin/hdfs datanode

docker-compose stop hdfs-datanode-3
docker-compose start hdfs-datanode-3

docker-compose stop hdfs-datanode-3
docker-compose rm hdfs-datanode-3
docker-compose up hdfs-datanode-3

docker-compose run gateway pyspark

docker-compose stop yarn-nodemanager-3
docker-compose start yarn-nodemanager-3
```
