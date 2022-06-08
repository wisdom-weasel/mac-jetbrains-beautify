#!/bin/bash

DIR="$HOME/Library/Application Support/JetBrains/Toolbox/apps"
SCRIPT_DIR=$(pwd)

for app in $(ls "$DIR")
do
  if [ $app != "Toolbox" ] # Skips the Toolbox app
  then
    echo "Processing $app folder..."
    ICON_DIR="$SCRIPT_DIR/$app.icns"

    for ch in $(ls "$DIR/$app/")
    do
      for ver in $(ls "$DIR/$app/$ch")
      do
        cd "$DIR/$app/$ch/$ver/"*.app/Contents/Resources
        
        # For the icon(s) in the Resources folder
        for icon in $(ls *.icns) 
        do
          BAK_FILE_NAME="${icon%.icns}.icns-bak"

          if [ -f "$(pwd)/$BAK_FILE_NAME" ]
          then
            # If the backup files already exists
            echo " - $app $ver: Backup icon files detected."
          else
            # If the backup files don't exist
            echo " - $app $ver: No backups detected, creating backups..."
            mv "$icon" "${icon%.icns}.icns-bak"
          fi

          # If the user wants to surprisingly, recover the original icons.
          if [ $1 = "--recover" ]
          then
            echo " - $app $ver: Recovering icons..."
            rm "$icon"
            cp "${icon%.icns}.icns-bak" "$icon"
          else
          # If the replacement file exists:
            if [ -f "$ICON_DIR" ]          
            then
              echo -e "Detected $app.icns in current script directory."
              echo " - $app $ver: Replacing icons..."
              cp "$ICON_DIR" "$(pwd)/$icon"
            else
              echo -e "You have $app installed, but $app.icns is not detected in the current directory.\n"
            fi
          fi

          # Refreshing icon caches
          touch "$(pwd)/../../"
          touch "$(pwd)/../Info.plist"
        done
      done
    done

    # new line
    echo
  fi
done