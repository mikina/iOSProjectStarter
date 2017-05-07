#!/bin/bash

if (( $# != 1 )); then
    echo "Please provide a new project name."
    exit 1
fi

find iOSProjectStarter -type f -name '*' -exec sed -i '' "s/iOSProjectStarter/$1/g" {} \;
bundle install
mv iOSProjectStarter $1
cd $1/
mv iOSProjectStarter $1
mv iOSProjectStarter.xcodeproj $1.xcodeproj
mv iOSProjectStarter.xcworkspace $1.xcworkspace
mv iOSProjectStarterSpec $1Spec
bundle exec pod install
open $1.xcworkspace
