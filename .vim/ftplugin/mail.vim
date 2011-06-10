"" Automatic formating options (default: tcq)
setlocal formatoptions+=a

"" Set width to wrap lines at
"" (Already set in default mail.vim)
"setlocal textwidth=72

"" Turn on spelling hilighting
setlocal spell

"" Key maps
"" Spell check text (with aspell(1))
nmap \a :w!<CR>:!aspell --mode=email -x check "%"<CR>:e! "%"<CR>

"" Sign email
nmap \n o-- <Esc>:r ~/.mutt/signature-uw<CR>
