" ShortCut
map <silent> <F3> :NERDTree<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"Mover entre tabs
" map <silent> <TAB> :tabp<CR>
" map <silent> <F10> :tabn<CR>
map <silent> <TAB> :tabn<CR>

"Color configuration
colo default
syntax on

" Emmet Configuration
let g:user_emmet_leader_key='<C-Y>'

"NerdTree-git-plugin configuration
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" let g:NERDTreeDirArrowExpandable = '-->'
" let g:NERDTreeDirArrowCollapsible = 'o'

"deoplete configuration
let g:deoplete#enable_at_startup = 1

" Configuration vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

" configuration tabs
set tabstop=2
set shiftwidth=2
set expandtab
filetype plugin indent on

"Configurations
set number
set cursorline
set ignorecase
set smartcase

" Templates Configurations
let g:tmpl_search_paths = ['~/.config/nvim/templates/']

"Vim configuration
" let g:vue_disable_pre_processors = 1  

" Live Server Configurations
let g:bracey_server_port=3000

" Plugins installation
call plug#begin('~/.local/share/nvim/plugged')
" Completion
	Plug 'roxma/nvim-completion-manager'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'carlitux/deoplete-ternjs' "Javascript completion.
  Plug 'deoplete-plugins/deoplete-jedi' "Python Completion
  Plug 'fszymanski/deoplete-emoji' "Emojies Completion
  Plug 'jiangmiao/auto-pairs' "Auto brackets
  Plug 'Shougo/deoplete-clangx' " C++ completion
  Plug 'maxmellon/vim-jsx-pretty' "React 'jsx' completion
" Status Bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
" NerdTree
  Plug 'scrooloose/nerdtree' 
  Plug 'Xuyuanp/nerdtree-git-plugin'
" Format
  "Plug 'sbdchd/neoformat'  
" Git
  Plug 'tpope/vim-fugitive'
" Syntaxis 
  Plug 'posva/vim-vue'
  Plug 'digitaltoad/vim-pug'
  Plug 'gorodinskiy/vim-coloresque' "show color for css rgb
" Templates
  Plug 'tibabit/vim-templates'
" Emmet
  Plug 'mattn/emmet-vim'
" Live server
  " Plug 'turbio/bracey.vim' "Me permite crear un servidor para ver el cambio de los archivos en vivo.
    " Este plugin se intaló para el desarrollo de del landing page de DS1
call plug#end()
