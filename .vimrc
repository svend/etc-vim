" .vimrc - Vim settings

set autoindent        " Indent subsequent lines
set background=light  " Terminal has light background
set hlsearch          " Highlight search matches
set laststatus=2      " Display position
set nojoinspaces      " Insert one space after a stop (period)
set pastetoggle=<C-P> " Toggle paste mode with CTRL-p
set ruler             " Show position
set showmode          " Show mode and 'modified' flag

set backspace=indent,eol,start
" Backspace behavior (comma separated, default: none)
" indent:	autoindents
" eol:		beyond beginning of line (join lines)
" start:	beyond start of insert

" Set commenting options (default: s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-)
set comments=://,b:#,:%,:XCOMM,n:>,fb:-,fb:*,fb:+

" List pattern (default: ^\s*\d\+[\]:.)}\t ]\s*)
" Default plus square-backeted lists
set formatlistpat=^\\s*\\(\\(\\d\\+[\\]:.)}\\t\ ]\\)\\\|\\(\\[\\d\\+\\]\\)\\)\\s*

" Automatic formating options (default: tcq)
" t:	auto-wrap text
" c:	auto-wrap comments
" q:	allow formating of comments with "gq"
" n:	recognize numbered lists
" l:	long lines are not broken in insert mode
set formatoptions+=n

" Turn on file type detection and load plugins
filetype plugin indent on

" Turn on syntax hilighting
syntax on
colorscheme svend-basic

" Key maps
" Spell check text (with aspell(1))
nmap ,a :w!<CR>:!aspell -x check "%"<CR>:e! "%"<CR>
" Toggle unprintable chars
nmap ,l :set list!<CR>
" Toggle spell-hilighting
nmap ,s :set spell!<CR>
" Toggle long line wrapping
nmap ,w :set wrap!<CR>
" Toggle line numbers
nmap ,n :set number!<CR>
