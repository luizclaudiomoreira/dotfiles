if [ -d ~/.zsh.after/ ]; then
  if [ "$(ls -A ~/.zsh.after/)" ]; then
    for config_file (~/.zsh.after/*.zsh) source $config_file
  fi
fi
