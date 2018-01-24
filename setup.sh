#!/bin/bash

set -ex

echo "Retrieving structure-test binary...."
echo
if [[ "$OSTYPE" == "darwin"* ]]; then
	echo "container-structure-test only released for Linux at this time."
	echo "To run on OSX, clone the repository and build using 'make'."
	exit 1
else
	curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test \
	&& mv container-structure-test structure-test \
	&& sudo cp structure-test /usr/local/bin \
	&& sudo chmod +x /usr/local/bin/structure-test
fi

export PATH=$PATH:/usr/local/bin

echo
echo "Pulling Google Python Docker image...."
echo

docker pull gcr.io/google-appengine/python
