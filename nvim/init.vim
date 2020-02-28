" Using vim-plug - https://github.com/junegunn/vim-plug
"
" this is the directory where the plugins are going to be stored
call plug#begin('~/dotfiles/vim-plugins')

" Make vim more expressive
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" Automatically insert brackets in pairs
Plug 'jiangmiao/auto-pairs'

" Automatically save buffers every time a change is made
Plug '907th/vim-auto-save'

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

"Latex
Plug 'lervag/vimtex'

"Gleam - Programming language
Plug 'gleam-lang/gleam.vim'

"Ale
Plug 'dense-analysis/ale'

call plug#end()

filetype plugin on

set number relativenumber
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''

nmap sj :SplitjoinJoin<cr>
nmap ss :SplitjoinSplit<cr>

" mouse support for terminal vim
set mouse=a

set autoindent
set encoding=utf8

" enable 24 bit true color
set termguicolors

" enable Forest theme
syntax enable
syntax on

" Enable auto save
let g:auto_save = 1

" Disable auto-save for rust files because we have rust fmt to lint on save
" leading to some annoying issues
augroup ft_rust
  au!
  au FileType rust let b:auto_save = 0
augroup END

" Rust autocompletion options
set hidden

" Ale checking when you leave insert mode
" let g:ale_lint_on_insert_leave

" Vim-Airline configs
let g:airline#extensions#tabline#enabled = 1

let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

augroup Racer
     autocmd!
     autocmd! FileType rust nmap gd <Plug>(rust-def)
     autocmd! FileType rust nmap gs <Plug>(rust-def-split)
     autocmd! FileType rust nmap gx <Plug>(rust-def-vertical)
     autocmd! FileType rust nmap <leader>gd <Plug>(rust-doc)<Paste>
augroup END


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


" Vimtex options
" install neovim-remote, and then enable it, since Vimtex needs to control
" nvim process from within neovim
let g:vimtex_compiler_progname = 'nvr'

"enable backward-sync in neovim-remote"
" nvr --remote-silent %f -c %l
