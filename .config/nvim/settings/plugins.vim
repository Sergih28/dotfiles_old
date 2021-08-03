"     ____  __            _
"    / __ \/ /_  ______ _(_)___  _____
"   / /_/ / / / / / __ `/ / __ \/ ___/
"  / ____/ / /_/ / /_/ / / / / (__  )
" /_/   /_/\__,_/\__, /_/_/ /_/____/
"               /____/

" ------------------------------------------------------------------------------

" ----- PLUGINS LIST -----------------------------------------------------------

call plug#begin('~/.vim/plugged')

" --- NERDTREE
Plug 'preservim/nerdtree'                                    " NERDTree File explorer
Plug 'ryanoasis/vim-devicons'                                " Icons in NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'               " Colorize NERDTree files
Plug 'xuyuanp/nerdtree-git-plugin'                           " Git Changes in NERDTree

" --- GIT
Plug 'tpope/vim-fugitive'                                    " Git Commands
Plug 'rbong/vim-flog'                                        " Git Graph
Plug 'airblade/vim-gitgutter'                                " Show Git Changes in line number col
Plug 'kdheepak/lazygit.nvim'                                 " LazyGit

" --- TELESCOPE
Plug 'nvim-lua/popup.nvim'                                   " Telescope
Plug 'nvim-lua/plenary.nvim'                                 " Telescope
Plug 'nvim-telescope/telescope.nvim'                         " Telescope

" --- STATUSBAR
Plug 'vim-airline/vim-airline'                               " Statusbar
Plug 'vim-airline/vim-airline-themes'                        " Themes for statusbar

" --- SYNTAX HIGHLIGHT
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'pantharshit00/vim-prisma'                              " Prisma Syntax Highlighting
Plug 'p00f/nvim-ts-rainbow'                                  " Rainbow color brackets
Plug 'cespare/vim-toml'                                      " TOML Syntax Highlighting
Plug 'dag/vim-fish'                                          " Fish Syntax Highlighting
" Plug 'sheerun/vim-polyglot'                                " General Syntax Highlighting

" --- TRACKING
Plug 'wakatime/vim-wakatime'                                 " Wakatime

" --- IN EDITOR
Plug 'Yggdroot/indentLine'                                   " Indent guides
Plug 'norcalli/nvim-colorizer.lua'                           " CSS Color Background
Plug 'matze/vim-move'                                        " Move lines
Plug 'mattn/emmet-vim'                                       " Faster HTML writing
Plug 'dhruvasagar/vim-table-mode'                            " Table Mode

" --- THEME
Plug 'Rigellute/shades-of-purple.vim'                        " VSCODE Theme

" --- MARKDOWN
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}      " Markdow Preview

" --- MULTIPLE CURSORS
Plug 'mg979/vim-visual-multi', {'branch': 'master'}          " Multiple cursors

" --- COLORS
Plug 'amadeus/vim-convert-color-to'                          " Convert colors hex, hsl...

" --- COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}              " Conquer Of Completion

" --- COC EXTENSIONS
let g:coc_global_extensions = [
    \ 'coc-tabnine',
    \ 'coc-tsserver',
    \ 'coc-prettier',
    \ 'coc-pairs',
    \ ]
"   \ 'coc-cssmodules',
"   \ 'coc-css',

call plug#end()

