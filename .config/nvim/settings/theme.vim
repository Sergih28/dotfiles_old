" ----- ENABLE 24 BIT TRUE COLOR -----------------------------------------------

if (has("termguicolors"))
 set termguicolors
endif

" ------------------------------------------------------------------------------

" ----- ENABLE THE THEME -------------------------------------------------------

syntax enable
"colorscheme shades_of_purple
colorscheme one-nvim
"autocmd! BufEnter,BufNewFile *.vue :colorscheme one-nvim
"autocmd! BufLeave *.vue colorscheme shades_of_purple

"let g:shades_of_purple_airline = 1
"let g:airline_theme='shades_of_purple'
let g:airline_theme='papercolor'

" ------------------------------------------------------------------------------

" ----- MAKE BACKGROUNDS TRANSPARENT -------------------------------------------

" --- BACKGROUND
:hi normal guibg=000000

" --- NUMBERS LINE
highlight clear LineNr

" --- GIT LINE
highlight clear SignColumn

" set cursorline

" ------------------------------------------------------------------------------
