#!/bin/bash
echo "Menu:"
echo "1. Build project"
echo "2. Setup project"
echo "Enter number and press [ENTER]: "
read NUMBER

if [[ $NUMBER -gt 2 ]]
then
  echo "The number is not in the menu"
  return
fi

if [[ $NUMBER -eq 2 ]]
then
pod repo update
git clone -b v1.12.13-hotfixes https://github.com/flutter/flutter.git
#brew tap dart-lang/dart
#brew install dart
#/usr/local/opt/dart/libexec
./flutter/bin/flutter pub get
./flutter/bin/flutter build ios --release
else
./flutter/bin/flutter pub get
./flutter/bin/flutter build ios --release
fi
