Steps:
1. brew install neovim
2. brew install fzf
3. ./link.sh
4. Install Vim-Plug with the following curl command:
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`
5. Restart terminal
6. Follow steps 1 and 2 from here: https://neovim.io/doc/user/nvim.html#nvim-from-vim
7. Save the vimrc and source it
8. Install any language extensions for Coc.
  8a. :CocInstall coc-json coc-tsserver

