" Using vim-plug - https://github.com/junegunn/vim-plug
"
" this is the directory where the plugins are going to be stored
call plug#begin()

" Easier Comments
"   gcc to comment out a line
"   gc in visual mode to comment out a section
Plug 'tpope/vim-commentary'
" Remaps '.' so that plugins can tap into it
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Gruvbox Theme
Plug 'morhetz/gruvbox'

" Nerdtree - File System Explorer
Plug 'scrooloose/nerdtree'

" Automatically save buffers every time a change is made
Plug '907th/vim-auto-save'

" Automatically insert brackets in pairs
Plug 'jiangmiao/auto-pairs'

" Highlight trailing whitespace in red
Plug 'bronson/vim-trailing-whitespace'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlighting for justfiles
Plug 'NoahTheDuke/vim-just'

call plug#end()
" ---------------------------------------------
"                GENERAL SETTINGS
" ---------------------------------------------

filetype plugin indent on

set number
set relativenumber

" Remap vertically splitting the screen with a fish terminal
" Ctrl + k
map <C-k> :vsp term://fish<CR>
" Create the new window to the right of the current window
set splitright
"
" Remap horizontally splitting the screen with a fish terminal
" Ctrl + j
map <C-j> :sp term://fish<CR>
" Create the new window at the bottom of the current window
set splitbelow

" HANDLING TABS \t
"
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Map Ctrl + t to open a new tab
map <C-t> :tabedit<CR>

" Set fold method to `syntax` which is most common setting I use
" Ctrl + i
map <C-i> :set fdm=syntax<CR>

" Copy and paste to and from clipboard
" Ctrl + c
nnoremap <C-c> "+y
"
" Ctrl + p
map <C-p> "+p

" ---------------------------------------------
"                APPEARANCE SETTINGS
" ---------------------------------------------
"
" enable 24 bit true color
set termguicolors
"
" gruvbox theme
colorscheme gruvbox

" ---------------------------------------------
"                PLUGIN SETTINGS
" ---------------------------------------------
"
" Set Ctrl + n as the trigger for NerdTree
map <C-n> :NERDTreeToggle<CR>
" Make nerdtree show hidden file, like .env
let NERDTreeShowHidden=1
" Use Enter to open the selected file in a new tab
" let NERDTreeMapOpenInTab='<TAB>'

" enable AutoSave on Vim startup
let g:auto_save = 1
" do not display the auto-save notification
let g:auto_save_silent = 1

" Vim Repeat (copied from the repo github)
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" ---------------------------------------------
"                COC SETTINGS
" ---------------------------------------------

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

" Use <c-space> to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" ---------------------------------------------
"                BEGINNER SETTINGS
" ---------------------------------------------

" Trying to break the habit of using arrow keys to navigate
" on normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
