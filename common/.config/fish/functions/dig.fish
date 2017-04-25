function dig -d "dig with better defaults"
  command dig +nocmd any +multiline +noall +answer $argv
end
