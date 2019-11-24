" Using vim-plug - https://github.com/junegunn/vim-plug
"
" this is the directory where the plugins are going to be stored
call plug#begin('~/dotfiles/vim-plugins')

" Make vim more expressive
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" Racer - Rust autocompletion tool
" Rust Tools
Plug 'racer-rust/vim-racer' 
Plug 'rust-lang/rust.vim'

" Emmet - emmet.io
Plug 'mattn/emmet-vim'

" airline bar at the bottom of vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Nerdtree - File System Explorer
Plug 'scrooloose/nerdtree'

" VimTex - For Latex
Plug 'lervag/vimtex'

" Automatic commenting and uncommenting
Plug 'scrooloose/nerdcommenter'

" Snippet completion
" FIXME: This does not work for some reason, some python error
"Plug 'sirver/ultisnips'

" split and join code into multiple lines and single lines respectively
Plug 'AndrewRadev/splitjoin.vim'

" Language Pack for vim
Plug 'sheerun/vim-polyglot'

" Syntax highlighting for pest
Plug 'pest-parser/pest.vim'

" Toggle between Relative and Absolute line numbers
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" color schemes
Plug 'sainnhe/vim-color-forest-night'
Plug 'morhetz/gruvbox'

call plug#end()

filetype plugin on

set number relativenumber
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''

nmap sj :SplitjoinJoin<cr>
nmap ss :SplitjoinSplit<cr>

" mouse support for terminal vim
set mouse=a

" enable 24 bit true color
set termguicolors

" enable Forest theme
syntax enable
syntax on

" Rust autocompletion options
set hidden

" Vim-Airline configs
let g:airline#extensions#tabline#enabled = 1

"let g:racer_cmd = "/home/user/.cargo/bin/racer"
"let g:racer_experimental_completer = 1
"let g:racer_insert_paren = 1
"au FileType rust nmap gd <Plug>(rust-def)
"au FileType rust nmap gs <Plug>(rust-def-split)
"au FileType rust nmap gx <Plug>(rust-def-vertical)
"au FileType rust nmap <leader>gd <Plug>(rust-doc)<Paste>

" Automatically format Rust code on saving
let g:rustfmt_autosave = 1

" Trying to break the habit of using arrow keys to navigate
" on normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Set the toggle fold key to Shift+Tab for easy use
map <s-tab> za

" Set Ctrl + n as the trigger for NerdTree
map <C-n> :NERDTreeToggle<CR>

"Airline-Theme
let g:airline_theme='forest_night'
colorscheme gruvbox

" FIXME: Why do I have to run PlugInstall everytime I open neovim?
" Run everytime you open vim, and close the window
