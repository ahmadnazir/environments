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
