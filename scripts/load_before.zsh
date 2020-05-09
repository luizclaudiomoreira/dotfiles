if [ -d ~/.zsh.before/ ]; then
  if [ "$(ls -A ~/.zsh.before/)" ]; then
    for config_file (~/.zsh.before/*.zsh) source $config_file
  fi
fi
