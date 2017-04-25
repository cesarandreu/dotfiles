function brew_all -d "Run all brew commands to get everything up to date"
      brew update --verbose;
  and brew bundle --verbose --global;
  and brew cleanup --verbose -s;
  and brew cask cleanup --verbose;
  and brew doctor --verbose;
end
