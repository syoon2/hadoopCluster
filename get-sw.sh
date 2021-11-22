#!/bin/sh

HADOOP_VERSION='3.3.0'

#APACHE_MIRROR="http://mirror.dsrg.utoronto.ca/apache/"
APACHE_MIRROR="http://mirror.csclub.uwaterloo.ca/apache/"
#APACHE_MIRROR="https://www-us.apache.org/dist/"

HADOOP_TARFILE="hadoop-${HADOOP_VERSION}.tar.gz"

mkdir -p sw
wget -nc ${APACHE_MIRROR}${HADOOP_APACHE_PATH} -O sw/${HADOOP_TARFILE}
