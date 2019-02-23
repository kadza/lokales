#!/bin/bash
flutter build apk
cd android
bundle install
fastlane android_appcenter_upload