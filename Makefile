all:
	make pull-wiki
	./brew

deploy:
	dotcloud push gugod.perlbrew public

pull-wiki:
	(cd App-perlbrew.wiki; git pull)
