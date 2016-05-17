all: docker

docker:
	docker build -t teachbase/h2cproxy .
	docker tag teachbase/h2cproxy:latest 644237644918.dkr.ecr.eu-west-1.amazonaws.com/teachbase/h2cproxy:latest   
	docker push 644237644918.dkr.ecr.eu-west-1.amazonaws.com/teachbase/h2cproxy:latest
