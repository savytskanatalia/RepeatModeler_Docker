FROM continuumio/anaconda
RUN	apt-get install unzip
RUN	wget https://github.com/savytskanatalia/RepeatModeler_Docker/archive/master.zip ;\
	unzip master.zip ;\
	cp RepeatModeler_Docker-master/environment.yml environment.yml ;\
	conda env create -f environment.yml
RUN	rm -r RepeatModeler_Docker-master
RUN	rm master.zip
RUN 	mkdir data
