# Persistent shell config
for config_name in "common" "private" (uname -s)
  if test -e "$config_name.fish"
    echo "Source $config_name.fish"
    source "$config_name.fish"
  else
    echo "Skip $config_name.fish"
  end
end

# Install dotfiles
for package_name in "common" "private" (uname -s)
  if test -d $package_name
    echo "Install $package_name"
    stow --restow "$package_name" --target "$HOME" --verbose
  else
    echo "Skip $package_name"
  end
end
