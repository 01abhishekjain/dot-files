" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" List of plugins
" Plug 'itchyny/lightline.vim'
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
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'

" Enable fzf in vim by adding the directory to the &runtimepath in Vim
Plug '/usr/local/opt/fzf'

" Initialize plugin system
call plug#end()

" Specify a color scheme
" colorscheme monokai
colorscheme gruvbox

" Specify auto fixer configurations
let g:ale_fixers = {'html': [], 'javascript': ['prettier-eslint'], 'scss': ['stylelint', 'prettier'], 'vue': ['prettier'], 'json': ['prettier']}
let g:ale_fix_on_save = 1
let g:ale_pattern_options = {
\   '.*\.json$': {'ale_enabled': 0},
\   '.*\.min\.*$': {'ale_enabled': 0}
\}

" Specify config for the ctrlp.vim plugin
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,package-lock.json

" Set indentation
set tabstop=2
set shiftwidth=2

" Set case for search
set ic

" Set relative line numbers
set relativenumber

" https://stackoverflow.com/a/35158504/4007775
set encoding=UTF-8

" auto open NERDTree on new tab with the current file's path
autocmd BufWinEnter * NERDTreeFind

" airline config -------------------------
let g:airline_section_x = '' " dont show the file extension
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]' " dont show encoding format if it is a very commonly used one
let g:airline_section_z = '%p%% %l/%L:%v' " set the line/column number section
let g:airline_skip_empty_sections = 1

" the next 4 lines disable the bufferline on top
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let airline#extensions#tabline#show_buffers = 0

" show just the file name in tab bar, not the full path
let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#formatter = 'default'

" show tab numbers on top
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
" let g:airline#extensions#tabline#buf_label_first = 0
" let g:airline#extensions#tabline#buffer_min_count = 2
" airline config -------------------------

" enable mouse
" set mouse=a

" key mappings
nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a
nnoremap n nzz
nnoremap N Nzz
set scrolloff=5
nnoremap Q <nop>

" only search for file contents using Ag, not the file name
" https://github.com/junegunn/fzf.vim/issues/346
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
