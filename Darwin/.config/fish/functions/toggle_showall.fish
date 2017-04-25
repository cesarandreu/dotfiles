function toggle_showall -d "Toggles show all files in Finder"
  set -l current_value (defaults read com.apple.Finder AppleShowAllFiles ^/dev/null; or echo "0")
  set -l next_value (test $current_value -eq 0; and echo "YES"; or echo "NO")
  defaults write com.apple.Finder AppleShowAllFiles -bool $next_value
  killall Finder /System/Library/CoreServices/Finder.app
  echo "Show all" (test $next_value = "YES"; and echo "enabled"; or echo "disabled")
end
