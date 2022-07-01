if [[ -f "$HOME/.cargo/env" && -r "$HOME/.cargo/env" ]]; then
  . "$HOME/.cargo/env"
fi

if [[ -f "$HOME/.golang/env" && -r "$HOME/.golang/env" ]]; then
  . "$HOME/.golang/env"
fi
