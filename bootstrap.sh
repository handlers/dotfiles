function bootstrap() {
  git clone git@github.com:plantfansam/dotfiles.git ~/.customization/dotfiles || true

  cd dotfiles
  cp .tmux.conf ~/.tmux.conf
  cp .gitconfig ~/.gitconfig
  cp .vimrc ~/.vimrc
  cp .bashrc ~/.bashrc
}
