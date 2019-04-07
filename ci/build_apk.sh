#!/bin/bash
TIMESTAMP=$(($(date +%s)/10))
flutter build apk --build-name=0.0.1 --build-number=$TIMESTAMP
cd android
bundle install
fastlane android_appcenter_upload