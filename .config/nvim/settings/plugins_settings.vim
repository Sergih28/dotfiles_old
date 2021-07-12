"     ____  __            _               _____      __  __  _
"    / __ \/ /_  ______ _(_)___  _____   / ___/___  / /_/ /_(_)___  ____ ______
"   / /_/ / / / / / __ `/ / __ \/ ___/   \__ \/ _ \/ __/ __/ / __ \/ __ `/ ___/
"  / ____/ / /_/ / /_/ / / / / (__  )   ___/ /  __/ /_/ /_/ / / / / /_/ (__  )
" /_/   /_/\__,_/\__, /_/_/ /_/____/   /____/\___/\__/\__/_/_/ /_/\__, /____/
"               /____/                                           /____/

"------------------------------------------------------------------------------"

""" NERDTREE
let g:NERDTreeIgnore = ['^node_modules$']               " Ignore node_modules folder

" vim-nerdtree-syntax-highlight
let g:NERDTreeFileExtensionHighlightFullName = 1        " Highlight Icon and Name
let g:NERDTreeExactMatchHighlightFullName = 1           " Highlight Icon and Name
let g:NERDTreePatternMatchHighlightFullName = 1         " Highlight Icon and Name

"------------------------------------------------------------------------------"

""" TELESCOPE
lua << EOF
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules"},
  }
}
EOF

"------------------------------------------------------------------------------"

""" TREE SITTER
" install --> :TSInstall lang
" list --> :TSInstallInfo
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 10000, -- Do not enable for files with more than 1000 lines, int
  }
}
EOF

""" Colorize background colors with nvim-colorizer
lua require('nvim-colorizer')

""" VIM-VISUAL-MULTI (MULTIPLE CURSORS)
let g:VM_default_mappings                    = 0
let g:VM_maps                                = {}
let g:VM_maps["Add Cursor Down"]             = '<leader>j'
let g:VM_maps["Add Cursor Up"]               = '<leader>k'
let g:VM_maps['Find Under']                  = '<C-n>'
let g:VM_maps['Find Subword Under']          = '<C-n>'
let g:VM_maps["Select All"]                  = '<C-m>'
