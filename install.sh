#! /bin/bash

###############################################################
# This script installs symlinks for all my dot files/folders. #
###############################################################

# Vars
DIR=~/dotfiles
BACKUP=~/dotfiles_old
FILES="vimrc vim profile i3/config"

# Create backup folder
if [ -d $BACKUP ]; then
    rm -R $BACKUP
fi
printf "Creating $BACKUP to hold backup dotfiles"
mkdir $BACKUP
printf "...done\n"


# Backup and install dotfiles
cd $DIR
for FILE in $FILES; do
    if [ -f ~/.$FILE ] || [ -d ~/.$FILE ]; then
        printf "Backing up $FILE"
        mv ~/.$FILE $BACKUP/$FILE
        printf "...done\n"
    fi
    if [ ! -f ~/.$FILE ] && [ ! -d ~/.$FILE ]; then
        printf "Creating symlink for $FILE"
        ln -s $DIR/$FILE ~/.$FILE
        printf "...done\n"
    fi
done
