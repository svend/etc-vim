" .vimrc - Vim settings

" autoindent - Indent subsequent lines
set autoindent

" background - Terminal has light background
set background=light

" backspace - Backspace behavior (same as indent,eol,start)
set backspace=2

" backupdir - Put backups under ~/.var
" default: backupdir=.,~/tmp,~/
set backupdir=~/.var/vim,~/tmp,~/

" comments - Add * and + bullets
set comments+=fb:*,fb:+

" directory - Put all swap files under ~/.var
" default: directory=.,~/tmp,/var/tmp,/tmp
set directory=~/.var/vim,~/tmp,/var/tmp,/tmp

" formatlistpat - List pattern
" default: ^\s*\d\+[\]:.)}\t ]\s*
" ^\\s*\\d\\+[\\]:.)}\\t ]\\s*
" (whitespace) numbers, ]:.)} tab space (whitespace)
" Default plus square-backeted lists ([n])
set formatlistpat=^\\s*\\(\\(\\d\\+[\\]:.)}\\t\ ]\\)\\\|\\(\\[\\d\\+\\]\\)\\)\\s*

" formatoptions - Recognize numbered lists
set formatoptions+=n

" hlsearch - Highlight search matches
set hlsearch

" ignorecase - Case-insensitive search
set ignorecase

" incsearch - Incremental search
set incsearch

" laststatus - Always display status line
set laststatus=2

" nojoinspaces - Insert one space after a stop (period)
set nojoinspaces

" pastetoggle - Toggle paste mode with CTRL-p
set pastetoggle=<C-P>

" ruler - Show position
set ruler

" showmode - Show mode and 'modified' flag
set showmode

" smartcase - Case-sensitive search when string contains upper case
set smartcase

" wildmenu - Display menu of command completions
set wildmenu

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
