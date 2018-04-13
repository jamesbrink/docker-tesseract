# Minimal TesseractOCR Docker image built on top of Alpine Linux.

[![Build Status](https://travis-ci.org/jamesbrink/docker-tesseract.svg?branch=master)](https://travis-ci.org/jamesbrink/docker-tesseract) [![Docker Automated build](https://img.shields.io/docker/automated/jamesbrink/tesseract.svg)](https://hub.docker.com/r/jamesbrink/tesseract/) [![Docker Pulls](https://img.shields.io/docker/pulls/jamesbrink/tesseract.svg)](https://hub.docker.com/r/jamesbrink/tesseract/) [![Docker Stars](https://img.shields.io/docker/stars/jamesbrink/tesseract.svg)](https://hub.docker.com/r/jamesbrink/tesseract/) [![](https://images.microbadger.com/badges/image/jamesbrink/tesseract.svg)](https://microbadger.com/images/jamesbrink/tesseract "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/jamesbrink/tesseract.svg)](https://microbadger.com/images/jamesbrink/tesseract "Get your own version badge on microbadger.com")  


## About

Just fairly small container for [TesseractOCR][tesseract].

## Usage Examples

Simple test run using **STDIN**

```shell
docker run --rm -i jamesbrink/tesseract stdin stdout < test_data/image1.png
```


Use as a base image.  

```Dockerfile
FROM jamesbrink/tesseract:3.5
COPY ./MyApp /MyApp
RUN apk add --update my-deps...
```

[tesseract]: https://github.com/tesseract-ocr/tesseract
[Alpine Linux Image]: https://github.com/gliderlabs/docker-alpine
