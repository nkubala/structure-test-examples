#!/bin/bash

structure-test -test.v -image gcr.io/google-appengine/python \
python_command_tests.yaml

structure-test -test.v -image gcr.io/google-appengine/python \
python_file_tests.yaml
