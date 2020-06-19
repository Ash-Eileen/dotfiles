syntax on

" Defaults for settings. Some random stuff
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set rnu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set runtimepath^=~/.vim/bundle/ctrlp.vim
set termguicolors
set cmdheight=2
set splitbelow

" Defaults for how columns display. Also adds line to show length.
set textwidth=79
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Oooh plugins!! 
call plug#begin('~/.vim/plugged')

" That sweet surround option for when I mess up brackets and then some
" autocomplete
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git integration, manuals and then the undotree and emmet
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'mattn/emmet-vim'
" Language pack then fzf, wakatime and themes
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'wakatime/vim-wakatime'
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim'
" Nerdtree for easy file navigation (icons for visuals) and then airline
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end() 

colorscheme dracula
set background=dark

let g:airline_powerline_fonts = 1

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

if executable('rg')
    let g:rg_derive_root='true'
endif

" Leader key. Comment for attention.
let mapleader = " "

" Nerdtree settings
let g:NERDTreeWinSize = 25
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <leader>pv :execute 'NERDTreeToggle ' . getcwd()<CR>

" Navigation remaps
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>w :split<CR>

" Go to definition
nmap <leader>gd <Plug>(coc-definition)

" Escape in insert mode
inoremap kj <Esc>

" Fugitive settings
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
