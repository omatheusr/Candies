#! /bin/bash

CURRENT_DIRECTORY="$(dirname "$BASH_SOURCE")"

TEMPLATES_DIRECTORY="${CURRENT_DIRECTORY}/Cocoa Touch Class.xctemplate/"

XCODE_TEMPLATES_DIRECTORY="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates/Source/Cocoa Touch Class.xctemplate/"

echo
echo
echo
echo "-----------------------------------"
echo "---- Candies by Matheus Rabelo ----"
echo "--------- Xcode Templates ---------"
echo "-----------------------------------"
echo
echo
echo
echo "Copying templates from ${TEMPLATES_DIRECTORY}"
echo
echo "To Xcode at: ${TEMPLATES_DIRECTORY}"
echo
sudo cp -R "$TEMPLATES_DIRECTORY" "$XCODE_TEMPLATES_DIRECTORY"

# open 
