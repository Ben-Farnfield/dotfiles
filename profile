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

# Java
JDK="jdk1.7.0_45"
JAVA=/opt/java/$JDK/bin
if [ -d "$JAVA" ]; then
    JDK="jdk1.7.0_45"
    PATH=$JAVA:$PATH
fi

# Android Dev Kit
SDK=/opt/ADT/sdk
if [ -d "$SDK" ]; then
    PATH=$PATH:$SDK/platform-tools
    PATH=$PATH:$SDK/tools
fi

