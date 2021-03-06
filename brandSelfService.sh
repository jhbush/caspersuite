#!/bin/bash
# 
# brandSelfService.sh
#
# Copy pre-made graphic files inside
# of Self Service.app for branding purposes
# 
# Place this and Self Service.app in a folder
# chmod +x this file
# Place assets in a subfolder named icons
# 
# Files needed:
# Your replacement icon for the app, 256x256: /icons/appicon.icns
# Your high res replacement icon for the app, 512x512: /icons/appicon@2x.icns
# Your replacement for the status area of SS, 84x84: /icons/logo-SelfService.tiff
# 
# For use with the JAMF Casper Suite
#
# Adam Codega, Swipely
#

# Copy the icon into place
echo "Copying the icon file into place.."
cp /icons/appicon.icns Self\ Service.app/Contents/Resources/Self\ Service.icns

# Copy the Retina icon into place
echo "Copying the Retina icon into place.."
cp /icons/appicon@2x.icns Self\ Service.app/Contents/Resources/Self\ Service@2x.icns

# Copy the status area icon into place
echo "Copying the status area icon into place.."
cp /icons/logo-SelfService.tiff Self\ Service.app/Contents/Resources/jsLogo-SelfService.tiff

# Rename Self Service in it's plist
echo "Renaming Self Service in info.plist and chmoding it.."
# Put your preferred app name at the end of this line in double quotes
sudo defaults write Self\ Service.app/Contents/Info CFBundleName "Swipely Service"
sudo chmod 744 Self\ Service.app/Contents/Info.plist

echo
echo "Done. You've been branded."
echo
