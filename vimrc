execute pathogen#infect()

set nocompatible    " don't worry about vi compatibility
set hidden          " hide buffers instead of closing them
set nowrap          " don't wrap lines
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set tabstop=2       " a tab is two spaces
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting
set number          " always show line numbers
set shiftwidth=2    " number of spaces to use for autoindenting
set shiftround      " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch       " set show matching parenthesis
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smartindent
set expandtab
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type
set history=1000    " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title           " change the terminal's title
set ttyfast         " smoother display on fast network connections
set laststatus=2
set cursorline      " highlight current line

" no backup files!
set nobackup
set noswapfile

filetype on
filetype plugin on " auto detect type of file being edited
filetype indent on " auto indent plugin

syntax on " use syntax color highlighting
highlight MatchParen guibg=HotPink guifg=yellow gui=bold

if has('gui_running')
  set guifont=Ubuntu\ Mono\ 16
  set background=dark
endif

" show trailing whitespace.
set list
set listchars=tab:>·,trail:·,extends:#,nbsp:·

set shortmess=a
set cmdheight=2

function! HighlightTooLongLines()
  highlight def link RightMargin Error
  if &textwidth != 0
    exec 'match RightMargin /\%<' . (&textwidth + 3) . 'v.\%>' . (&textwidth + 1) . 'v/'
  endif
endfunction
