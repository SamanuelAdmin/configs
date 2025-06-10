# secure options (let vim take configs from another dirs)
set exrc
set secure

# line numbers
set number
set relativenumber

# tabs configs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
filetype plugin indent on

" Highlight configs
set hlsearch
syntax on

" Highlight for C files
augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END


" mouse configs
set mouse=a


" use system buffer
set clipboard=unnamedplus


" Plugins with PlugVim
" To install - use :PlugInstall
call plug#begin("~/.config/nvim/plugins")

" Plug 'scrooloose/nerdtree'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'

call plug#end()


" NERDTREE CONFIGS
" auto open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | wincmd p
" folder icons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" show line count in files
let g:NERDTreeFileLines = 1
" close nerdtree if no file has been open
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" YouCompleteMe configs
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

