
adapt-build:	
	docker build /home/lucafavalli/AdaptLab/adapt-lab/ -t lcf:tex -f ./Dockerfile4Adapt

alone-build:	
	docker build /home/lucafavalli/AdaptLab/adapt-lab/ -t lcf:tex -f ./DockerfileAlone
