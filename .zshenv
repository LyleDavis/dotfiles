if [[ -f "$HOME/.cargo/env" && -r "$HOME/.cargo/env" ]]; then
  . "$HOME/.cargo/env"
fi

if [[ -f "$HOME/.golang/env" && -r "$HOME/.golang/env" ]]; then
  . "$HOME/.golang/env"
fi

if [[ -f "$HOME/.ruby/env" && -r "$HOME/.ruby/env" ]]; then
  . "$HOME/.ruby/env"  
fi

if [[ -f "$HOME/.javascript/env" && -r "$HOME/.javascript/env" ]]; then
  . "$HOME/.javascript/env"  
fi
