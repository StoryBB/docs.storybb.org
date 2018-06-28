#!/bin/bash
cd /var/www/html/docs.storybb.org/code
git fetch
git pull
cd ../

rm -rf docs
mkdir docs

php phpDocumentor.phar

if [ -f docs/index.html ]
	then
		rm -rf public_html/*
		cp -R docs/* public_html/
fi
