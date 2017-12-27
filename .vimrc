execute pathogen#infect()
syntax on
filetype plugin indent on
set number
let mapleader = ","

" Viewing files in drawer
noremap <leader>n :NERDTree<CR>a
let NERDTreeShowHidden=1

" Fuzzy search / recently used files
nnoremap dk :CtrlP<CR>
nnoremap do :CtrlPMRU<CR>
nnoremap du :CtrlPBufTag<CR>

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

autocmd Filetype sh setlocal tabstop=2
autocmd BufWritePre * %s/\s\+$//e

" splits
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

