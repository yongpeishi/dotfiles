syntax on

" Vundle for vim plugins
filetype off                      " required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'     " let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlp.vim'

call vundle#end()                 " required

" end Vundle

filetype plugin indent on    " required

" Indentation
set expandtab                          " use spaces instead of tabs
set softtabstop=2                      " tab by two spaces
set shiftwidth=2                       " (auto)indent two spaces
set autoindent
set autoread                           " auto reload file on change

" NERDTree
map <leader>t :NERDTreeToggle<CR>
map <leader>T :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" CtrlP
map <leader>p :CtrlP<cr>
map <leader>r :CtrlPClearCache<cr>

" SEARCH
set incsearch                          " search incrimentally
set hlsearch                           " highlight search results

" use \space to hide search results
map <leader><space> :noh<cr>

" no wrap
set nowrap

" Whitespace highlight in red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Whitespace removal
map <leader>s :silent! %s/\s\+$//<cr>

" show line number
set nu

" git
command! Blame :!git blame %
