
set number relativenumber
syntax enable
set noswapfile
set scrolloff=5
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

set spelllang=en,cjk
set spellsuggest=best,9

" PLUGS "{{{
" ---------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

" Colorscheme
Plug 'dracula/vim', { 'name': 'dracula' }

" Autopairs
Plug 'jiangmiao/auto-pairs'

" NERDCommenter - Powerful commenting
Plug 'preservim/nerdcommenter'

" NeoVim Colorizer - A high-performance color highlighter
Plug 'norcalli/nvim-colorizer.lua'

" Vim-Airline & Themes - Status/tabline for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" COC - True snippet and additional text editing support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Treesitter - Provides a simple interface and some basic functionality such as highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope - a highly extendable fuzzy finder over lists
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Emmet is a powerful completion tool for HTML, CSS and JavaScript
Plug 'mattn/emmet-vim'

" Nvim orgmode
Plug 'nvim-orgmode/orgmode'

" Plugs I'm Testing...
Plug 'frazrepo/vim-rainbow'
Plug 'prettier/vim-prettier'
  
call plug#end()

"}}}

" Load the colorscheme
colorscheme dracula

" Spellcheck hotkey
nnoremap <silent> <D-F11> :set spell!<cr>
inoremap <silent> <D-F11> <C-O>:set spell!<cr>

" Airline - Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR> " Back
nmap <leader>2 :bn<CR> " Forward
nmap <C-w> :bd<CR> " Close


" Open CocConfig with C
function! SetupCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction

" Use C to open coc config
call SetupCommandAbbrs('C', 'CocConfig')

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
