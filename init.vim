call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
call plug#end()

set number
set relativenumber
set textwidth=80

"keymapping
nmap <F8> :TagbarToggle<CR>
"buffer
set hidden

"Indent
set tabstop=4
set shiftwidth=4
set expandtab
"Encoding
set enc=utf-8
set fenc=utf-8
"syntax
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let c_no_curly_error=1
set showmatch
let g:rainbow_active = 1 "rainbow parentheses
syntax on
"air-line
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"color scheme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "medium"
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark

"Neomake for C++
let g:neomake_cpp_enabled_makers=['gcc']
let g:neomake_cpp_gcc_maker = {
    \ 'exe': 'g++-5',
    \ 'args': ['-std=c++11'],
    \ }
autocmd! BufWritePost * Neomake

"Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = "/usr/local/Cellar/llvm/3.9.1/lib/libclang.dylib"
let g:deoplete#sources#clang#clang_header = "/usr/local/Cellar/llvm/3.9.1/lib/clang"
let g:deoplete#sources#clang#std = {'cpp': 'c++11'}
