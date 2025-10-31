#!/usr/bin/env fish
set selfwd (path dirname (realpath (status -f)))
set bs $selfwd/bs

$bs -e HOME -w ../2025-10-30-vdo-ninja-helper
