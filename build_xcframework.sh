#!/usr/bin/env

# This script builds a very simple library for illustrative purposes.

echo "Cleaning..."
rm -rf ./build
#rm ./downloadMicroAppsSwiftSDK.framework
#rm -rf ./downloadMicroAppsSwiftSDK.xcframework

xcodebuild archive -workspace downloadMicroAppsSwiftSDK.xcworkspace \
  -scheme downloadMicroAppsSwiftSDK \
  -sdk iphoneos \
  -archivePath "build/archives/ios_devices.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO
  
xcodebuild archive -workspace downloadMicroAppsSwiftSDK.xcworkspace \
  -scheme downloadMicroAppsSwiftSDK \
  -sdk iphonesimulator \
  -archivePath "build/archives/ios_simulators.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

xcodebuild -create-xcframework \
    -framework build/archives/ios_devices.xcarchive/Products/Library/Frameworks/downloadMicroAppsSwiftSDK.framework \
   -framework build/archives/ios_simulators.xcarchive/Products/Library/Frameworks/downloadMicroAppsSwiftSDK.framework \
  -output build/downloadMicroAppsSwiftSDK.xcframework
