" Specify a directory for plugins call 
call plug#begin("~/vimfiles/autoload") 

Plug 'Yggdroot/indentLine' 
Plug 'itchyny/lightline.vim' 
Plug 'mengelbrecht/lightline-bufferline'
Plug 'axvr/photon.vim'
Plug 'wojciechkepka/vim-github-dark'
Plug 'sainnhe/edge'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'cespare/vim-toml'
Plug 'sheerun/vim-polyglot'

call plug#end() 

let mapleader = ","
let localleader = ","

syntax on

set mouse=a 
set nowrap 
set cursorline
set number
set relativenumber
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4 
set encoding=utf8 
set history=5000
set clipboard=unnamedplus

echom ">^.^<"

noremap! <C-H> <C-w>
nnoremap <s-l> :bn<CR>
nnoremap <s-h> :bN<CR>
nnoremap <a-m> :e 
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>o o<ESC>k
nnoremap <leader><s-o> O<ESC>j
nnoremap <leader>cd :cd %:p:h<cr>
nnoremap <leader>q :bd %<cr>
nnoremap <leader>f :args *.py<cr>


inoremap jk <ESC>

" changes the nature of pasting while in visual mode. Pre-copies selection in
" --a-- named register instead of the unnamed register
vnoremap p "adP
vnoremap P p
vnoremap <leader>" c"<ESC>pa"<ESC>
vnoremap <leader>' c'<ESC>pa'<ESC>


" python config

" for py-- way of executing
autocmd FileType python nnoremap <F4> :w<CR>:term py "%"<CR>
autocmd FileType python inoremap <F4> <ESC>:w<CR>:term py %<CR>

" for the normal way of executing a program
autocmd FileType python nnoremap <F5> :w<CR>:! "%"<CR>
autocmd FileType python inoremap <F5> <ESC>:w<CR>:! %<CR>


" c config

" for sdl compile
autocmd FileType c  nnoremap <F4> :w<CR>:term gcc -std=c17 % -IC:\Users\judea\SDL2\x86_64-w64-mingw32\include -LC:\Users\judea\SDL2\x86_64-w64-mingw32\lib -Wall -lmingw32 -lSDL2main -lSDL2 -o main<CR>
autocmd FileType c inoremap  <F4> <ESC>:w<CR>:term gcc -std=c17 % -IC:\Users\judea\SDL2\x86_64-w64-mingw32\include -LC:\Users\judea\SDL2\x86_64-w64-mingw32\lib -Wall -lmingw32 -lSDL2main -lSDL2 -o main<CR>
>
" for normal compile
autocmd FileType c  nnoremap <F5> :w<CR>:term gcc -o %:r % && %:r.exe<CR>
autocmd FileType c inoremap  <F5> <ESC>:w<CR>:term gcc -o %:r % && %:r.exe<CR>

autocmd FileType javascript, typescript nnoremap <F5> :w<CR>:term npm run android<CR>
autocmd FileType javascript, typescript inoremap <F5> <ESC>:w<CR>:term npm run android<CR>
let g:jsx_ext_required = 0 

let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 12

let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

"lua << EOF
" require'nvim-treesitter.configs'.setup {
"  highlight = {
"    enable = false,
"    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
"    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
"    -- Using this option may slow down your editor, and you may see some duplicate highlights.
"    -- Instead of true it can also be a list of languages
"    additional_vim_regex_highlighting = false,
" },
"}       
"EOF


if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
endif


set termguicolors

filetype plugin on
filetype plugin indent on

set nocompatible
set conceallevel=0
set cindent
set updatetime=750
set signcolumn=yes
set showtabline=2

set laststatus=2
set linespace=3
set cursorline

if has('termguicolors')
      set termguicolors
endif

let g:edge_style = "aura"
let g:edge_better_performance = 1

colorscheme edge

let g:lightline = {'colorscheme' : 'edge'}

let g:lightline#bufferline#enable_nerdfont = 1

let g:lightline.component_expand = {'buffers' : 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers' : 'tabsel'}

let g:lightline.active = {'left': [[ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ], ['bufnum']]}
let g:lightline.inactive = {'left' : [], 'right' : []}
let g:lightline.tabline = {'left' : [['buffers']], 'right' : [['close']]}

let g:lightline.separator = { 'left': "\ue0b8", 'right': "\ue0be" }
let g:lightline.subseparator = { 'left': "\ue0b9", 'right': "\ue0b9" }
let g:lightline.tabline_separator = { 'left': "\ue0bc", 'right': "\ue0ba" }
let g:lightline.tabline_subseparator = { 'left': "\ue0bb", 'right': "\ue0bb" }
