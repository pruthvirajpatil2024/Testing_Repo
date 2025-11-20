#!/data/data/com.termux/files/usr/bin/bash

# Folder where your phone stores images
SOURCE_DIR="/sdcard/Pictures"

# Your GitHub repo folder
REPO_DIR="/sdcard/Alarms/Testing_Repo"

while true
do
    # Copy images from Pictures to repo
    cp $SOURCE_DIR/*.jpg $REPO_DIR 2>/dev/null
    cp $SOURCE_DIR/*.jpeg $REPO_DIR 2>/dev/null
    cp $SOURCE_DIR/*.png $REPO_DIR 2>/dev/null

    # Go inside repo
    cd $REPO_DIR

    # Commit + Push
    git add .
    git commit -m "Auto-upload from Pictures folder"
    git push

    # Check every second
    sleep 1
done
