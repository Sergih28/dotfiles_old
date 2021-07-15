" ----- ENABLE 24 BIT TRUE COLOR -----------------------------------------------

if (has("termguicolors"))
 set termguicolors
endif

" ------------------------------------------------------------------------------

" ----- ENABLE THE THEME -------------------------------------------------------

syntax enable
colorscheme shades_of_purple

let g:shades_of_purple_airline = 1
let g:airline_theme='shades_of_purple'

" ------------------------------------------------------------------------------

" ----- MAKE BACKGROUNDS TRANSPARENT -------------------------------------------

" --- BAKCGROUND
:hi normal guibg=000000

" --- NUMBERS LINE
highlight clear LineNr

" --- GIT LINE
highlight clear SignColumn

" set cursorline
" autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
" autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

" ------------------------------------------------------------------------------
