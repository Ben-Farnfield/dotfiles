#! /bin/bash

###############################################################
# This script installs symlinks for all my dot files/folders. #
###############################################################

# Vars
DIR=~/dotfiles
BACKUP=~/dotfiles_old
FILES="vimrc vim profile"

# Create backup folder
if [ ! -d "$BACKUP" ]; then
	printf "Creating $BACKUP to hold backup dotfiles"
	mkdir $BACKUP
	printf "...done\n"
fi

# Backup and install dotfiles
cd $DIR
for FILE in $FILES; do
    if [ -f "$FILE" -o -d "$FILE" ]; then
        printf "Backing up $FILE"
		mv ~/.$FILE $BACKUP/$FILE
		printf "...done\n"
	fi
	printf "Creating symlink for $FILE"
	ln -s $DIR/$FILE ~/.$FILE
	printf "...done\n"
done
