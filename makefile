prereq : 
	./get-sw.sh

base : 
	docker build -f Dockerfile-base -t hadoop-cluster-base .

build : base
	docker compose build

scratch : prereq base build

run : 
	docker compose up
