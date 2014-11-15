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

* sudo apt-get install php5-mysql
* Update the php.ini so that the mysql extension is enabled
* sudo apt-get install acl # for setfacl support

Dev
---
* sudo apt-get install git
* sudo apt-get install curl
* curl -sS https://getcomposer.org/installer | php; mv composer.phar /usr/local/bin/composer
* sudo apt-get install php5-curl

Other Requirements
------------------

* sudo apt-get install php5-intl
**Memcache**
* sudo apt-get install php5-memcached
* sudo apt-get install pkg-config
<!-- * sudo apt-get install php5-memcache -->
<!-- * sudo apt-get install php5-dev -->
<!-- * sudo apt-get install php-pear -->
<!-- * sudo pecl install memcache -->
