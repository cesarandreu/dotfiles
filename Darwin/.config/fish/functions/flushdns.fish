# From github.com/oh-my-fish/plugin-osx
function flushdns -d "Flush macOS DNS cache"
  sudo killall -HUP mDNSResponder
end
