#!/bin/bash
sed -i '' "s/google_maps_api_key/${GOOGLE_MAPS_API_KEY}/g" ios/Runner/AppDelegate.m
flutter build ios --no-codesign