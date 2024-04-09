
adapt-build:	
	docker build ~/Devel/adapt-lab/ -t f14:tex -f ./Dockerfile4Adapt

alone-build:	
	docker build ~/Devel/adapt-lab/ -t f14:tex -f ./DockerfileAlone
