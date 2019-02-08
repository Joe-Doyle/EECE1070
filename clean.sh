#!/bin/bash
#clean all backup files downstream
find . -name '*~' -print -exec rm -rfv {} \;