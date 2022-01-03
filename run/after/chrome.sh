#!/usr/bin/env bash
# set Chrome as default
open -a "Google Chrome" --args --make-default-browser
pkill -nx "Google Chrome" &> /dev/null
