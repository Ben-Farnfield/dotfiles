# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

### My stuff ###

# start gnome-keyring under i3
if [ $(ps -e | grep i3 | wc -l) > 0 ]; then
    eval $(/usr/bin/gnome-keyring-daemon \
    --start --components=gpg,pkcs11,secrets,ssh)
    export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID \
    GPG_AGENT_INFO SSH_AUTH_SOCK
fi

# Sublime Text 2
ST2=/opt/SublimeText2
if [ -d "$ST2" ]; then
	PATH=$ST2:$PATH
fi	

# Java
JDK="jdk1.7.0_51"
JAVA=/opt/Java/$JDK/bin
if [ -d "$JAVA" ]; then
    PATH=$JAVA:$PATH
fi

# Android Dev Kit
SDK=/opt/ADT/sdk
if [ -d "$SDK" ]; then
    PATH=$PATH:$SDK/platform-tools
    PATH=$PATH:$SDK/tools
fi
