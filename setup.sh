#!/bin/bash

echo "Retrieving structure-test binary...."
echo
if [[ "$OSTYPE" == "darwin"* ]]; then
	curl -LO https://storage.googleapis.com/gcp-container-tools/structure-test/latest/structure-test-darwin-amd64 \
	&& mv structure-test-darwin-amd64 structure-test \
	&& sudo cp structure-test /usr/local/bin \
	&& chmod +x /usr/local/bin/structure-test
else
	curl -LO https://storage.googleapis.com/gcp-container-tools/structure-test/latest/structure-test-linux-amd64 \
	&& mv structure-test-linux-amd64 structure-test \
	&& sudo cp structure-test /usr/local/bin \
	&& chmod +x /usr/local/bin/structure-test
fi

mkdir -p $HOME/bin \
&& export PATH=$PATH:$HOME/bin \
&& mv structure-test $HOME/bin/structure-test

echo
echo "Pulling Google Python Docker image...."
echo

docker pull gcr.io/google-appengine/python
