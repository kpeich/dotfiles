call plug#begin()
" THEMES
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'nightsense/carbonized'
Plug 'ajmwagar/vim-deus'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'sainnhe/forest-night'
Plug 'morhetz/gruvbox'
" END THEMES

Plug 'vhda/verilog_systemverilog.vim'
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
Plug 'ARM9/arm-syntax-vim'

call plug#end()

" beginning or end of line using L and H
" also jump to (High) and (L)ow
nnoremap L $
vnoremap L $
nnoremap H ^
vnoremap H ^

" bold
" let g:enable_bold_font = 1
" italics
" let g:enable_italic_font = 1


" general settings
inoremap jk <Esc>
syntax on
set number
set noswapfile
set backspace=indent,eol,start
set spell spelllang=en_us

set showtabline=2
set softtabstop=4
set ts=4 sw=4
set autoindent
set smarttab
set fileformats=unix,dos,mac
set clipboard=unnamed
set ignorecase smartcase

if has('termguicolors')
	set termguicolors
endif
" end general

" COLORSCHEME
" colorscheme elflord
set bg=dark
let g:gruvbox_material_background='hard'
colorscheme gruvbox-material
let g:airline_theme='zenburn'

" vimtex/general encoding 
set encoding=utf8

"  coc auto complete using TAB
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" run python in vim 
autocmd FileType python noremap <buffer> <C-b> :!python3 %<CR>

" ARM Syntax
au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7
