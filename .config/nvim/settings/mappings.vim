"       __  ___                  _
"      /  |/  /___ _____  ____  (_)___  ____ ______
"     / /|_/ / __ `/ __ \/ __ \/ / __ \/ __ `/ ___/
"    / /  / / /_/ / /_/ / /_/ / / / / / /_/ (__  )
"   /_/  /_/\__,_/ .___/ .___/_/_/ /_/\__, /____/
"               /_/   /_/            /____/

" ----- LEADER -----------------------------------------------------------------

let mapleader = " "                             " Map leader key to space

" ------------------------------------------------------------------------------

" ----- COMMON VIM MAPPINGS ----------------------------------------------------

" SELECT ALL
nnoremap <C-a> ggVG

" SAVE
nmap <leader>s :w<cr>
" QUIT BUFFER
nmap <leader>q :bd<cr>

" SPLITS
nmap <leader>v :vsplit<cr>
nmap <leader>h :split<cr>
" RESIZE SPLITS
nnoremap <silent> <leader>+ :exe "resize +2"<CR>
nnoremap <silent> <leader>- :exe "resize -2"<CR>
nnoremap <silent> <leader>> :exe "vertical resize +4"<CR>
nnoremap <silent> <leader>< :exe "vertical resize -4"<CR>

" MOVE THROUGH BUFFERS
nmap <leader>bn :bn<cr>
nmap <leader>bp :bp<cr>
nmap <leader>bd :bd<cr>

" TAB LINES IN NORMAL MODE
nnoremap <S-Tab> <<
nnoremap <Tab> >>

" TAB LINES IN VISUAL MODE
vnoremap <S-Tab> <
vnoremap <Tab> >

" TAB LEFT IN INSERT MODE
" Ctrl+t --> Tab right
" Ctrl+d --> Tab left

" ------------------------------------------------------------------------------

" ----- MOVE LINES IN NORMAL MODE ----------------------------------------------

let g:move_key_modifier = 'C'                   " vim-move Shortcut Ctrl+k/j h/l

" ------------------------------------------------------------------------------

" ----- TELESCOPE --------------------------------------------------------------

" Open Files
nnoremap <silent> <C-p> :Telescope find_files<CR>

" ------------------------------------------------------------------------------

" ----- COC --------------------------------------------------------------------

" :noa w        save file without reformatting on save

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Go to definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" Go to next/previous error message
nmap <silent> dp <Plug>(coc-diagnostic-prev)
nmap <silent> dn <Plug>(coc-diagnostic-next)

" Show errors list
nnoremap <silent> <leader>d :<C-u>CocList diagnostics<cr>

" ------------------------------------------------------------------------------

" ----- LAZYGIT ----------------------------------------------------------------

nnoremap <silent> <leader>lg :LazyGit<CR>

" ------------------------------------------------------------------------------

" ----- NERDTREE ---------------------------------------------------------------

nnoremap <silent> <leader>nt :NERDTreeToggle<CR>

" ------------------------------------------------------------------------------
