" .vimrc - Vim settings

set autoindent                               " Indent subsequent lines
set background=light                         " Terminal has light background
set backspace=2                              " Backspace behavior (same as indent,eol,start)
set backupdir=~/.var/vim,~/tmp,~/            " Put backups under ~/.var
                                             " default: backupdir=.,~/tmp,~/
set comments+=fb:*,fb:+                      " Add * and + bullets
set directory=~/.var/vim,~/tmp,/var/tmp,/tmp " Put all swap files under ~/.var
                                             " default: directory=.,~/tmp,/var/tmp,/tmp
set formatoptions+=n                         " Recognize numberd lists
set hlsearch                                 " Highlight search matches
set ignorecase                               " Case-insensitive search
set incsearch                                " Incremental search
set laststatus=2                             " Always display status line
set nojoinspaces                             " Insert one space after a stop (period)
set pastetoggle=<C-P>                        " Toggle paste mode with CTRL-p
set ruler                                    " Show position
set showmode                                 " Show mode and 'modified' flag
set smartcase                                " Case-sensitive search when string contains upper case
set wildmenu                                 " Display menu of command completions

" List pattern
" default: ^\s*\d\+[\]:.)}\t ]\s*
" ^\\s*\\d\\+[\\]:.)}\\t ]\\s*
" (whitespace) numbers, ]:.)} tab space (whitespace)
" Default plus square-backeted lists ([n])
set formatlistpat=^\\s*\\(\\(\\d\\+[\\]:.)}\\t\ ]\\)\\\|\\(\\[\\d\\+\\]\\)\\)\\s*

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
