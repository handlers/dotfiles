execute pathogen#infect('bundle/{}', '/usr/local/opt/fzf')
syntax on
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab number
let mapleader=","

" nerdtree config
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 50
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" ctrlp - start in full path mode
let g:ctrlp_by_filename = 0
" " ctrlp - show dot files
let g:ctrlp_show_hidden = 1

" " Fuzzy search / recently used files
nnoremap dk :CtrlP<CR>
nnoremap do :CtrlPMRU<CR>
nnoremap du :CtrlPBufTag<CR>

" fzf
" nnoremap <leader>f :FZF<CR>



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
nnoremap <Leader>a :Ack!<Space>
