" .vimrc - Vim settings

set autoindent        " Indent subsequent lines
set background=light  " Terminal has light background
set hlsearch          " Highlight search matches
set incsearch         " Incremental search
set laststatus=2      " Always display status line
set nojoinspaces      " Insert one space after a stop (period)
set pastetoggle=<C-P> " Toggle paste mode with CTRL-p
set ruler             " Show position
set showmode          " Show mode and 'modified' flag
set wildmenu          " Display menu of command completions

" Backspace behavior (comma separated, default: none)
" indent:	autoindents
" eol:		beyond beginning of line (join lines)
" start:	beyond start of insert
set backspace=indent,eol,start

" Set commenting options (default: s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-)
" Remove /* comment */
"set comments=://,b:#,:%,:XCOMM,n:>,fb:-,fb:*,fb:+
" Add * and + bullets
set comments+=fb:*,fb:+

" List pattern
" default: ^\s*\d\+[\]:.)}\t ]\s*
" ^\\s*\\d\\+[\\]:.)}\\t ]\\s*
" (whitespace) numbers, ]:.)} tab space (whitespace)
" Default plus square-backeted lists ([n])
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
if !&diff
	syntax on
endif
colorscheme svend-basic

" Hack to disable matching parens hilighting
let loaded_matchparen = 1

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
