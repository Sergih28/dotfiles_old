"    ______            _____
"   / ____/___  ____  / __(_)___ _
"  / /   / __ \/ __ \/ /_/ / __ `/
" / /___/ /_/ / / / / __/ / /_/ /
" \____/\____/_/ /_/_/ /_/\__, /
"                        /____/

"------------------------------------------------------------------------------"

set number relativenumber               " Show relative and line number
set expandtab                           " Replace tabs with white spaces
set shiftwidth=4                        " Make tabs 4 spaces long
set scrolloff=10                        " When scrolling, keep 10 lines above / below the cursor at all times
set termguicolors                       " Enable 24 bit RGB color
set hidden                              " Be able to switch buffers with unsaved changes

" Highlight trailing white spaces
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" On insert mode, show only line number, not relative
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Make sure it loads all syntax highlight when opening tsx / jsx files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

