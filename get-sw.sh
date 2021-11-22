#!/bin/sh

HADOOP_VERSION='3.3.1'

HADOOP_TARFILE="hadoop-${HADOOP_VERSION}.tar.gz"

mkdir -p sw
wget -nc https://dlcdn.apache.org/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz -O sw/${HADOOP_TARFILE}
