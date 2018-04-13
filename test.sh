#!/bin/bash

# Simple test to ensure container and tesseract are working.

EXPECTED_OUTPUT=$(cat test_data/image1.txt)
TEST_OUTPUT=$(docker run --rm -i jamesbrink/tesseract stdin stdout < test_data/image1.png)

if [[ "${TEST_OUTPUT}"  == "${EXPECTED_OUTPUT}" ]]; then
	echo "Passed"
	exit 0
else
	echo "Failed"
	exit 1
fi