#!/bin/zsh
#
# Requires colorpicker and xclip
# selects color and outputs to clipboard
colorpicker --short --one-shot | xargs echo -n | xclip -selection c
