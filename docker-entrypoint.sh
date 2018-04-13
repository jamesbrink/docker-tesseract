#!/bin/bash
# Tesseract Entrypoint.

if [[ "${@}" =~ ^(bash|sh|zsh)$ ]]; then
	exec "${@}"
else
	exec /usr/local/bin/tesseract $@
fi