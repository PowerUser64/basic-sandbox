#!/usr/bin/env fish
set selfwd (path dirname (realpath (status -f)))
set bs $selfwd/bs

$bs -e HOME -e ASDF ps aux
