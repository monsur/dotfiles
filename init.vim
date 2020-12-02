call plug#begin()

Plug 'dikiaap/minimalist'
Plug 'vim-airline/vim-airline'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

call plug#end()

set t_Co=256
syntax on
colorscheme minimalist

let g:prettier#config#tab_width = '2'
let g:prettier#config#use_tabs = 'false'

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" a tab is two spaces
set tabstop=2

" highlight current line
set cursorline

" show trailing whitespace
set list
set listchars=tab:>·,trail:·,extends:#,nbsp:·

