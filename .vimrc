"" .vimrc - Vim settings

"" Indent subsequent lines
set autoindent

"" Backspace behavior (comma separated, default: none)
"" indent:	autoindents
"" eol:		beyond beginning of line (join lines)
"" start:	beyond start of insert
set backspace=indent,eol,start

"" Terminal has light background
set background=light

"" Set commenting options (default: s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-)
set comments=://,b:#,:%,:XCOMM,n:>,fb:-,fb:*,fb:+

"" List pattern (default: ^\s*\d\+[\]:.)}\t ]\s*)
"" Default plus square-backeted lists
set formatlistpat=^\\s*\\(\\(\\d\\+[\\]:.)}\\t\ ]\\)\\\|\\(\\[\\d\\+\\]\\)\\)\\s*

"" Automatic formating options (default: tcq)
"" t:	auto-wrap text
"" c:	auto-wrap comments
"" q:	allow formating of comments with "gq"
"" n:	recognize numbered lists
"" l:	long lines are not broken in insert mode
set formatoptions+=n

"" Highlight search matches
set hlsearch

"" Insert one space after a stop
set nojoinspaces

"" Display position
set laststatus=2

"" Show mode and 'modified' flag
set showmode

"" Turn on file type detection and load plugins
filetype plugin indent on

"" Turn on syntax hilighting
syntax on
colorscheme basic

"" Key maps
"" Spell check text (with aspell(1))
nmap ,a :w!<CR>:!aspell -x check "%"<CR>:e! "%"<CR>
"" Toggle unprintable chars
nmap ,l :set list!<CR>
"" Toggle paste mode
nmap ,p :set paste!<CR>
"" Toggle spell-hilighting
nmap ,s :set spell!<CR>
"" Toggle long line wrapping
nmap ,w :set wrap!<CR>
"" Toggle line numbers
nmap ,n :set number!<CR>
