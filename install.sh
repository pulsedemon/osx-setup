#!/bin/sh

xcode-select --install

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null

brew install wget
brew install git
brew install gnupg
brew install bash-completion
brew install git-extras
brew install postgresql
brew install go
brew install elixir

brew tap caskroom/cask
brew cask install atom
brew cask install dropbox
brew cask install postico
brew cask install iterm2
brew cask install slack
brew cask install google-chrome
brew cask install spotify
brew cask install spectacle

# install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

# install atom packages
apm install atom-typescript
apm install file-icons
apm install language-elixir
apm install language-puppet
apm install go-plus
apm install markdown-preview-plus
apm install pigments
apm install react

# cleanup
brew cask cleanup

# npm global modules
npm install -g @angular/cli
npm install -g yarn
npm install -g phantomjs
npm install -g mocha
