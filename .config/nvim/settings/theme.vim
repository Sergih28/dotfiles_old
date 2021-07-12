"""" enable 24bit true color
if (has("termguicolors"))
 set termguicolors
endif

"""" enable the theme
syntax enable
colorscheme shades_of_purple

let g:shades_of_purple_airline = 1
let g:airline_theme='shades_of_purple'

"""" MAKE BACKGROUNDS TRANSPARENT
"Background
:hi normal guibg=000000

"Numbers line
highlight clear LineNr

"Git line
highlight clear SignColumn

" set cursorline
" autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
" autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg
