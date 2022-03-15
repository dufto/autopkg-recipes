#!/bin/sh

## Read application CFBundleVersion
CFBundleVersion=""
if [ -f "/Applications/%NAME%.app/Contents/Info.plist" ]; then
	CFBundleVersion=$(defaults read "/Applications/%NAME%.app/Contents/Info.plist" CFBundleVersion)
fi
echo "<result>$CFBundleVersion</result>"