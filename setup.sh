#!/bin/bash

set -ex

echo "Retrieving structure-test binary...."
echo
if [[ "$OSTYPE" == "darwin"* ]]; then
	curl -LO https://storage.googleapis.com/gcp-container-tools/structure-test/latest/structure-test-darwin-amd64 \
	&& mv structure-test-darwin-amd64 structure-test \
	&& sudo cp structure-test /usr/local/bin \
	&& sudo chmod +x /usr/local/bin/structure-test
else
	curl -LO https://storage.googleapis.com/gcp-container-tools/structure-test/latest/structure-test-linux-amd64 \
	&& mv structure-test-linux-amd64 structure-test \
	&& sudo cp structure-test /usr/local/bin \
	&& sudo chmod +x /usr/local/bin/structure-test
fi

export PATH=$PATH:/usr/local/bin

echo
echo "Pulling Google Python Docker image...."
echo

docker pull gcr.io/google-appengine/python
