" turn off compatibility with the old vi
set nocompatible
"
" navigation, search, patterns
set incsearch
set ignorecase
set smartcase
"
" scrolling: lock cursor line to middle of screen
set scrolloff=999 
"
" syntax, highlighting, spelling
" turn syntax highlighting on by default
syntax on
set hlsearch
set cursorline
" automatically show matching brackets. works like it does in bbedit.
set showmatch
set spell
colorscheme sienna 
"
" multiple windows
set laststatus=2
"
" Custom status line; see:
" http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
"
" GUI
if has("gui_running")
  set guioptions-=m
  set guioptions-=T
endif
"
" info
set showcmd
set showmode
set ruler
set number
" turn on the "visual bell"; quieter than the "audio blink"
set visualbell
set helplang=en
"
" editing text
" force the backspace key to work the way it should
set backspace=indent,eol,start
set showmatch
" no return at EOL for EOF! causes HTTP headers for web coding ... bad
set binary noeol
"
" tabs and indenting
" set auto-indenting on for programming
"   set autoindent
" set tabs to four spaces
set ts=4
"
" line wrapping
set tw=72
set fo+=w
" commands to use above params to reformat any document to 72-char line 
" breaks:
" "  g/^\a/s/$/ /  "
" "  gggqG         "
"
" Highlight lines over 72 characters in length whenever a window opens
" For vim > v7.1. See: http://vim.wikia.com/wiki/Highlight_long_lines
if v:version >= 720
  :au BufWinEnter * let w:m1=matchadd('Search', '\%<73v.\%>69v', -1)
  :au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>72v.\+', -1)
elseif v:version >= 700
  :au BufRead,BufNewFile * syntax match Search /\%<73v.\%>69v/
  :au BufRead,BufNewFile * syntax match ErrorMsg /\%>72v.\+/
endif
"
" diff mode
set diffopt=filler,iwhite,vertical
"
" reading and writing files
set ml
set mls=2
set autowrite
set fileformats=unix,mac,dos
"
" command line editing
set history=100
"
" multi-byte characters
" Treat ambiguous double-width characters (e.g.â¡æâª etc) correctly
set ambiwidth=double
" file type detection
filetype on
filetype plugin on
filetype indent on 
" omni-completion (though it is built-in in later version)
set ofu=syntaxcomplete#Complete
