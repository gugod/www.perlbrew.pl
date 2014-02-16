all:
	sitebrew
	sitebrew buildatom

deploy:
	cd public; s3cmd sync ./ s3://perlbrew.pl/

pull-wiki:
	if [ -d "App-perlbrew.wiki" ]; then (cd App-perlbrew.wiki; git pull); else git clone git://github.com/gugod/App-perlbrew.wiki.git; fi
