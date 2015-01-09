Builing the Image
=================

	# Build the image from the docker file
	docker build ./docker/

	# Tag the image
	docker tag IMAGE_NAME ahmadnazir/debian-wheezy:0.1

	# Check that the image is tagged
	docker images

	# Start the container
	vagrant up

TODO:
====

	# Update the php.ini so that the mysql extension is enabled

Dev
---
	curl -sS https://getcomposer.org/installer | php; sudo mv composer.phar /usr/local/bin/composer

Other Requirements
------------------

*Tried the following, probably not required*

	sudo apt-get install php5-memcache
	sudo apt-get install php5-dev
	sudo apt-get install php-pear
	sudo pecl install memcache

**Blackfire**

*Key*

	```
	curl -s https://packagecloud.io/gpg.key | sudo apt-key add -
	echo "deb http://packages.blackfire.io/debian any main" | sudo tee /etc/apt/sources.list.d/blackfire.list
	```

*Agent*

	```
	sudo apt-get update
	sudo apt-get install blackfire-agent
	sudo apt-get install blackfire-php
	# sudo blackfire-agent --register # Have the server ID and token available e.g. env vars
	```
