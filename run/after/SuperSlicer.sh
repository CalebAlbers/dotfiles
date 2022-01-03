#!/usr/bin/env bash

# Removes SuperSlicer from quarantine

APP="/Application/SuperSlicer.app"
if [[ -f "$APP" ]]; then
    xattr -d com.apple.quarantine $APP
fi
