set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab "use spaces for tabs
set tw=80 "line width to 80 characters
set nosmartindent

"When pasting code with ctlr+v, press F2 to avoid autoindent
set pastetoggle=<F2>

set splitright
set splitbelow

set encoding=UTF-8

set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

let mapleader = ","
noremap <leader>nt :NERDTree<cr>
noremap <leader>t :term<cr>
noremap <leader>vt :vert term<cr>
noremap <leader>en :lnext<cr>
noremap <leader>ep :lprevious<cr>
noremap <leader>nw :set textwidth=1000<cr>
noremap <leader>yw :set textwidth=80<cr>

let NERDTreeShowHidden=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
filetype plugin on
