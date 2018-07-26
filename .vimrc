set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" I install FZF using git, so have to add this
set rtp+=~/.fzf

call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-commentary'
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'benmills/vimux'
Plugin 'tpope/vim-dispatch'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab number
let mapleader=","

" nerdtree config
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 50
let NERDTreeAutoDeleteBuffer = 0
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" ctrlp - start in full path mode
let g:ctrlp_by_filename = 0
" " ctrlp - show dot files
let g:ctrlp_show_hidden = 1


" fzf
nnoremap <leader>f :FZF<CR>

" splits
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd Filetype sh setlocal tabstop=2
autocmd BufWritePre * %s/\s\+$//e

" use ag in ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

cnoreabbrev Ack Ack!

" ctrlsf (find in project replacement)
nnoremap <Leader>fip :CtrlSF

" run tests command
nnoremap <Leader>rtp :!nosetests %
