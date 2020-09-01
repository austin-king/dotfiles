set nocompatible              " be iMproved, required filetype off                  " required
set rtp+=/usr/local/opt/fzf

call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/fzf.vim' " fuzzy finder
Plug 'christoomey/vim-tmux-navigator' " hopping between vim and tmux panes
Plug 'neoclide/coc.nvim', {'branch': 'release'} " language server client
Plug 'chriskempson/base16-vim' " colors!
Plug 'jiangmiao/auto-pairs'
" GET ripgrep

call plug#end()

" line number customizations
set relativenumber 
set number " shows real number for line I'm on

" tab and indenting settings
set expandtab autoindent tabstop=2 shiftwidth=2


" Color
let base16colorspace=256  " Access colors present in 256 colorspace
set t_Co=256
set termguicolors
colorscheme base16-heetch

" Fzf mapping
nnoremap ;b :Buffers<cr>
nnoremap ;f :Files<cr>
nnoremap ;l :Lines<cr>
nnoremap ;h :call fzf#vim#helptags()<cr>

let mapleader=' '
nnoremap <leader>v :vsplit<cr> " easy vertical split
set splitright " puts cursor on new vertical split
nnoremap <leader>x :split<cr> " easy horizontal split
set splitbelow " puts cursor on new horizontal split
nnoremap <leader>ev :vsplit ~/.vimrc<cr> " opens up .vimrc
nnoremap <leader>sv :source ~/.vimrc<cr> " sources latest .vimrc

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Shows code documentation using the language server
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" rename all instances
nmap <leader>rn <Plug>(coc-rename)
