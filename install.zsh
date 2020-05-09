if [ ! -d "$HOME/.dotfiles" ]; then
  echo "Installing dotfiles"

  # clone
  git clone https://github.com/luizclaudiomoreira/dotfiles.git "$HOME/.dotfiles"
  cd "$HOME/.dotfiles"
  git submodule update --init

  # links
  for i in `find $HOME/.dotfiles/symlinks/ -maxdepth 1`; do
    if [ ! -d "$i" ]; then
      file=`basename $i`
      ln -snfv $i $HOME/.${file}
    fi
  done

  touch $HOME/.gitconfig.user
  mkdir -p $HOME/.zsh.before
  mkdir -p $HOME/.zsh.after
  echo "source $HOME/.dotfiles/zshrc" >> ~/.zshrc
  source $HOME/.zshrc
else
  echo "You already have a .dotfiles folder in $HOME"
fi
