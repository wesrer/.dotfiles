" Using vim-plug - https://github.com/junegunn/vim-plug
"
" this is the directory where the plugins are going to be stored
call plug#begin('~/dotfiles/vim-plugins')

" Make vim more expressive
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" Rename Current file
Plug 'danro/rename.vim'

" --------------------------------------------------------
"  		     RENAME.VIM USAGE
" --------------------------------------------------------
"
" :rename[!] {newname}
"
" --------------------------------------------------------

" Automatically insert bullets and numbers
Plug 'dkarter/bullets.vim'

" --------------------------------------------------------
"  		  BULLETS.VIM SHORTCUTS
" --------------------------------------------------------
"
" -  Ctrl + t 	 -> Increase indent in Insert mode
" - >>   	 -> Increase indent in Normal mode
" - >		 -> Increase indent in Visual mode
" - Ctrl + d 	 -> Decrease indent
" - << 	 	 -> Decrease indent in Normal mode
" - < 	 	 -> Decrease indent in Visual mode
" - <leader> + x -> Toggle a checkbox in Normal mode (I have a custom leader)
"
" --------------------------------------------------------

" Automatically insert brackets in pairs
Plug 'jiangmiao/auto-pairs'

" Automatically save buffers every time a change is made
Plug '907th/vim-auto-save'

" Markdown folding
Plug 'masukomi/vim-markdown-folding'

" Racer - Rust autocompletion tool
" Rust Tools
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'

"Ruby tools

" Emmet - emmet.io
Plug 'mattn/emmet-vim'

" airline bar at the bottom of vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Nerdtree - File System Explorer
Plug 'scrooloose/nerdtree'

" VimTex - For Latex
Plug 'lervag/vimtex'

" Snippet completion
" FIXME: This does not work for some reason, some python error
"Plug 'sirver/ultisnips'

" split and join code into multiple lines and single lines respectively
Plug 'AndrewRadev/splitjoin.vim'

" Language Pack for vim
Plug 'sheerun/vim-polyglot'

"Golang
Plug 'fatih/vim-go ' , { 'do': ':GoUpdateBinaries' }

" Syntax highlighting for pest
Plug 'pest-parser/pest.vim'

" Toggle between Relative and Absolute line numbers
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" color schemes
Plug 'sainnhe/vim-color-forest-night'
Plug 'morhetz/gruvbox'

"Gleam - Programming language
Plug 'gleam-lang/gleam.vim'

"Ale
Plug 'dense-analysis/ale'

call plug#end()

" ---------------------------------------------
"                GENERAL SETTINGS
" ---------------------------------------------

" mouse support for terminal vim
set mouse=a

" Map Ctrl + T to open a new tab
map <C-t> :tabedit<CR>

" Make line numbers relative on normal mode and
" absolute in insert mode
set number relativenumber

" Change the leader to the `-` key
let mapleader="-"

filetype plugin indent on

" HANDLING TABS \t
"
" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Set the toggle fold key to Shift+Tab for easy use
map <s-tab> za

" Set fold method to `syntax` which is most common setting I use
map <C-i> :set fdm=syntax<CR>

" Trying to break the habit of using arrow keys to navigate
" on normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" ---------------------------------------------
"                PLUGIN SETTINGS
" ---------------------------------------------

" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

" Set Ctrl + n as the trigger for NerdTree
map <C-n> :NERDTreeToggle<CR>

" TODO: write documentation
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''

nmap sj :SplitjoinJoin<cr>
nmap ss :SplitjoinSplit<cr>

" ---------------------------------------------
"                THEME SETTINGS
" ---------------------------------------------
" enable 24 bit true color
set termguicolors

" enable Forest theme
syntax enable
syntax on

"Airline-Theme
let g:airline_theme='forest_night'
colorscheme gruvbox

" Vim-Airline configs
let g:airline#extensions#tabline#enabled = 1

" ---------------------------------------------
"                FILE SETTINGS
" ---------------------------------------------

set autoindent
set encoding=utf8

" Delete trailing whitespace on saving
autocmd BufWritePre * %s/\s\+$//e

" Enable auto save
let g:auto_save = 1

" ---------------------------------------------
"                RUST SETTINGS
" ---------------------------------------------

" Disable auto-save for rust files because we have rust fmt to lint on save
" leading to some annoying issues
augroup ft_rust
  au!
  au FileType rust let b:auto_save = 0
augroup END

" Ale linters
let g:ale_linters = {
	\ 'go': ['gopls'],
	\}

" Rust autocompletion options
set hidden

" Ale checking when you leave insert mode
" let g:ale_lint_on_insert_leave
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

" TODO: Write documentation for these

augroup Racer
     autocmd!
     autocmd! FileType rust nmap gd <Plug>(rust-def)
     autocmd! FileType rust nmap gs <Plug>(rust-def-split)
     autocmd! FileType rust nmap gx <Plug>(rust-def-vertical)
     autocmd! FileType rust nmap <leader>gd <Plug>(rust-doc)<Paste>
augroup END


" Automatically format Rust code on saving
let g:rustfmt_autosave = 1


" ---------------------------------------------
"                RUBY SETTINGS
" ---------------------------------------------

" Ruby specific bindings to override defaults
augroup ft_ruby
  au!
  " Ruby recommended indentation is 2 spaces istead of 4
  au FileType ruby set tabstop=2
  au FileType ruby set shiftwidth=2
augroup END


" ---------------------------------------------
"               TAB OPTIONS
" ---------------------------------------------
" Vimtex options
" install neovim-remote, and then enable it, since Vimtex needs to control
" nvim process from within neovim
let g:vimtex_compiler_progname = 'nvr'

"enable backward-sync in neovim-remote"
" nvr --remote-silent %f -c %l
