#!/bin/bash

cd "${0%/*}"

xcodebuild -project SDKABC.xcodeproj -scheme SDKABC -configuration Debug -sdk iphoneos -derivedDataPath ./build build
xcodebuild -project SDKABC.xcodeproj -scheme SDKABC -configuration Debug -sdk iphonesimulator -derivedDataPath ./build build

# Create xcframework
# TODO
