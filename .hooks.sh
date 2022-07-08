if [[ -f "$HOME/.cargo/hooks" && -r "$HOME/.cargo/hooks" ]]; then
  . "$HOME/.cargo/hooks"
fi

if [[ -f "$HOME/.golang/hooks" && -r "$HOME/.golang/hooks" ]]; then
  . "$HOME/.golang/hooks"
fi

if [[ -f "$HOME/.ruby/hooks" && -r "$HOME/.ruby/hooks" ]]; then
  . "$HOME/.ruby/hooks"
fi

if [[ -f "$HOME/.javascript/hooks" && -r "$HOME/.javascript/hooks" ]]; then
  . "$HOME/.javascript/hooks"
fi
