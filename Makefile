all:
	make pull-wiki
	./brew

deploy:
	dotcloud push gugod.perlbrew public

pull-wiki:
	if [ -d "App-perlbrew.wiki" ]; then (cd App-perlbrew.wiki; git pull); else git clone git://github.com/gugod/App-perlbrew.wiki.git; fi
