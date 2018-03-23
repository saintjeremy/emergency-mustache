#!/bin/bash
#
# This will install homebrew, go, git, and will then 
# configure a workspace for projects on your github account
#

echo "Enter path to go workspace (ex: $HOME/go) :"
read PATHTOGO

echo "Enter your github username - this will be used for projects in the go workspace (ex: saintjeremy) :"
read USER

mkdir $PATHTOGO
mkdir -p $gopath/src/github.com/$USER

# set environment  variables from user input
export GOPATH=$PATHTOGO
export GOROOT=/usr/local/opt/go/libexec

# append to $PATH
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# install homebrew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# install relevant packages from homebrew

brew install git
brew install go

Echo "All set, make sure you generate an ssh key for $USER and get it uploaded to github"

exit 0
