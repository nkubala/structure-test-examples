#!/bin/bash

structure-test -test.v -driver tar -image gcr.io/google-appengine/python \
python_file_tests.yaml
