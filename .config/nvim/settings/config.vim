"    ______            _____
"   / ____/___  ____  / __(_)___ _
"  / /   / __ \/ __ \/ /_/ / __ `/
" / /___/ /_/ / / / / __/ / /_/ /
" \____/\____/_/ /_/_/ /_/\__, /
"                        /____/

" ------------------------------------------------------------------------------

" ----- GENERAL CONFIG ---------------------------------------------------------

set number relativenumber               " Show relative and line number
set expandtab                           " Replace tabs with white spaces
set shiftwidth=4                        " Make tabs 4 spaces long
set scrolloff=10                        " When scrolling, keep 10 lines above / below the cursor at all times
set termguicolors                       " Enable 24 bit RGB color
set hidden                              " Be able to switch buffers with unsaved changes

" ------------------------------------------------------------------------------

" ----- HIGHLIGHT TRAILING WHITE SPACES -----------------------------------------

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" ------------------------------------------------------------------------------

" ----- ON INSERT MODE SHOW ONLY LINE NUMBER, NOT RELATIVE ---------------------

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" ------------------------------------------------------------------------------

" ----- MAKE SURE IT LOADS ALL SYNTAX HIGHLIGHT WHEN OPENING TSX / JSX FILES ---

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" ------------------------------------------------------------------------------

" ----- SET VUE FILETYPE AUTOMATICALLY -----------------------------------------

"autocmd BufReadPost,BufNewFile *.vue setfiletype html
