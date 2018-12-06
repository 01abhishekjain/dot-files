" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" List of plugins
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'crusoexia/vim-monokai'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'

" Enable fzf in vim by adding the directory to the &runtimepath in Vim
Plug '/usr/local/opt/fzf'

" Initialize plugin system
call plug#end()

" Specify a color scheme
colorscheme monokai

" Specify auto fixer configurations
let g:ale_fixers = {'html': [], 'javascript': ['prettier-eslint'], 'scss': ['prettier','stylelint'], 'vue': ['prettier'], 'json': ['prettier']}
let g:ale_fix_on_save = 1

" Specify config for the ctrlp.vim plugin
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

" Set indentation
set tabstop=2
set shiftwidth=2

" Set case for search
set ic

" Set relative line numbers
set relativenumber

" https://stackoverflow.com/a/35158504/4007775
set encoding=utf-8
