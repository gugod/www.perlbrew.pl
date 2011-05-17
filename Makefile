all:
	./brew

deploy:
	dotcloud push gugod.perlbrew public

pull-wiki:
	(cd App-perlbrew.wiki; git pull)
	git add App-perlbrew.wiki;
	git commit -m "update wiki";
