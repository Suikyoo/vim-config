" Specify a directory for plugins call 
call plug#begin('~/.vim/plugged') 

Plug 'christoomey/vim-tmux-navigator' 
Plug 'Yggdroot/indentLine' 
Plug 'itchyny/lightline.vim' 
Plug 'rafi/awesome-vim-colorschemes' 
Plug 'sonph/onehalf', { 'rtp': 'vim' } 

call plug#end() 

let mapleader = ","


set mouse=a 
set number 
set nowrap 
set relativenumber 
set hidden 
set cursorline
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

nnoremap <s-l> gt<CR>
nnoremap <s-h> gT<CR>
nnoremap <a-m> :tabnew<SPACE>
nnoremap <F5> :w<CR>:!py "%"<CR>

nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>o o<ESC>k
nnoremap <leader><s-o> O<ESC>j
nnoremap <leader>cd :cd %:p:h<cr>

inoremap jk <ESC>
inoremap <F5> <ESC>:w<CR>:!py %<CR>

" changes the nature of pasting while in visual mode. Pre-copies selection in
" --a-- named register instead of the unnamed register
vnoremap p "adP
vnoremap P p
vnoremap <leader>" c"<ESC>pa"<ESC>
vnoremap <leader>' c'<ESC>pa'<ESC>

let g:netrw_banner = 0
let g:netrw_altfile = 1
let g:netrw_liststyle = 0
let g:netrw_browse_split = 3
let g:netrw_altv = 1
let g:netrw_winsize = 15


if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif

  if (has("termguicolors"))
    set termguicolors
  endif
endif

set conceallevel=0
set cindent
set hidden 
set updatetime=750
set signcolumn=yes

set laststatus=2

colorscheme onehalfdark 
let g:lightline = {'colorscheme' : 'onehalfdark'}

