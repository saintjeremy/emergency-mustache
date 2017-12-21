#!/bin/bash
#
# This will install homebrew, go, git, and will then 
# configure a workspace for projects on your github account
#

echo "Enter path to go workspace (ex: $HOME/go) :"
read GOPATH

echo "Enter your github username - this will be used for projects in the go workspace (ex: saintjeremy) :"
read USER

mkdir $gopath
mkdir -p $gopath/src/github.com/$USER

export GOPATH=$GOPATH
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# install homebrew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# install relevatn packages from homebrew

brew install git
brew install go

Echo "All set, make sure you generate an ssh key for $USER and get it uploaded to github"

exit 0
