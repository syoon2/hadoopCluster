# An Experimental Hadoop-in-Docker Deployment

This command builds Docker images needed for multi-datanode setup.
```bash
make scratch
```

This command launches the group of Hadoop nodes.
```bash
docker compose up
```

And you can do other variously-destructive experiments:
```bash
# Add one more YARN/HDFS node:
docker-compose run yarn-nodemanager-4 /opt/hadoop/bin/yarn nodemanager
docker-compose run hdfs-datanode-4 /opt/hadoop/bin/hdfs datanode

# take down (wait for failure) and restore an HDFS node:
docker-compose stop hdfs-datanode-3
docker-compose start hdfs-datanode-3

# take down, wipe the disk, and restore an HDFS node:
docker-compose stop hdfs-datanode-3
docker-compose rm hdfs-datanode-3
docker-compose up hdfs-datanode-3
```

To clean everything up:
```bash
docker-compose down
docker system prune -f
```
