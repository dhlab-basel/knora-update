#!/usr/bin/env bash

mkdir -p test-data
curl -X GET -H "Accept:application/x-trig" "http://localhost:7200/repositories/knora-test/statements?infer=false" > test-data/knora-test.trig
