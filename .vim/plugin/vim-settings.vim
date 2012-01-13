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
