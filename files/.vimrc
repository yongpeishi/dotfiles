execute pathogen#infect()
syntax on
filetype plugin indent on

" Indentation
set expandtab                          " use spaces instead of tabs
set softtabstop=2                      " tab by two spaces
set shiftwidth=2                       " (auto)indent two spaces
set autoindent

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
