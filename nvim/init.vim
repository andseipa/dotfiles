"
" .vimrc by Andreas Seipajarvi
" 
" {{{	General


set nocompatible                  " be iMproved, required
filetype off                      " required

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'morhetz/gruvbox'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'dhruvasagar/vim-table-mode'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'othree/html5.vim'
Plug 'scrooloose/nerdtree'


call plug#end()

" }}}
" {{{	Misc

set nu                            " linenumbering
set relativenumber				" Relative linenumbering
syn on                            " syntax highlighting on
set clipboard+=unnamed
set mouse=			" disable mouse
set showcmd			" show incomplete commands
set incsearch		" search as i type
set nohlsearch		" don't highlight the search
set smartcase		" ignore case in search (for now)
set ignorecase		

set encoding=utf-8	" correct encoding
scriptencoding utf-8
set termencoding=utf-8

set nobackup		" no backup files
set noswapfile		" swap only inhibits

set directory=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
if exists('+undofile')
	set undofile
	set undodir=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
endif

set history=1000                            " more history
set undolevels=1000                         " more undo
set shell=bash                              " set shell for ?
set hidden                                  " allow buffers in background
set listchars=tab:\ \ ,trail:·              " invisible chars
set list                                    " show trails
set showmatch

set splitbelow                              " better splits when opening new window
set splitright

set timeout timeoutlen=1000 ttimeoutlen=100 " responsive timeout

set autoindent                              " autoindent on new lines
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab                             " tab chars don't expand to space
set smartindent

set autoread                                " refresh files when coming back
set foldlevel=999
set exrc                                    " autoload local .vimrc files
set secure                                  " but let's make it secure
set modelines=5
set path+=**
set wildmenu

filetype plugin on

autocmd BufWinLeave *.vim mkview
autocmd BufWinEnter *.vim silent loadview 

" }}}
" {{{	Plugin specific

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:ctrlp_working_path_mode = 'wa'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:10'
let g:ctrlp_show_hidden = 1
let g:ctrlp_by_filename = 0
let g:ctrlp_custom_ignore = {
	\ 'dir':	'\v[\/]\.(git|hg|svn|vivaldi-snapshot)$',
	\ 'file':	'\v\.(exe|so|dll|pdf|jpg|png|svg|eot)$',
	\ }

set wildignore+=*/.git/*,*/.pdf/*

let g:table_mode_corner = "|"

" {{{ Lightline

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ],
      \ },
      \ 'component_function': {
      \   'modified': 'LightlineModified',
      \   'readonly': 'LightlineReadonly',
      \   'fugitive': 'LightlineFugitive',
      \   'filename': 'LightlineFilename',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'fileencoding': 'LightlineFileencoding',
      \   'mode': 'LightlineMode',
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }

function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? '⭠ '.branch : ''
  endif
  return ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

" }}}

set laststatus=2
if !has('gui_running')
	set t_Co=256
endif
set noshowmode

let g:pandoc#filetypes#pandoc_markdown = 1
let g:pandoc#spell#enabled = 0
let g:pandoc#formatting#mode = "ha"
let g:pandoc#formatting#textwidth = 74
let g:pandoc#folding#fdc = 0

let g:pandoc#command#custom_open = "MyPandocOpen"

" function! MyPandocOpen(file)
" 	return 'zathura --fork' . shellescape(expand(a:file,':p'))
" endfunction

function! MyPandocOpen(file)
	return 'zathura --fork'. a:file
endfunction

function ZathuraOpen(type)
	let b:zathura = @% . ".pdf"
	execute "!zathura --fork " . shellescape(b:zathura)
endfunction

" }}}
" {{{	Keybinds

" Assign mapleader to space
let mapleader = "\<Space>"	
let maplocalleader = ","

" Insert date
map <leader>r :r! date "+\%d/\%m-\%Y"<CR>

" Easy access to notesdir, vimrc, etc
map <leader>1 :CtrlP $NOTESDIR<CR>
map <leader>2 :CtrlP $PRESENDIR<CR>
map <leader>3 :CtrlP $DEVDIR<CR>
map <leader>0 :e ~/.config/nvim/init.vim<CR>
map <leader>9 :e ~/.config/i3/config<CR>
map <leader>8 :e ~/.config/termite/config<CR>
map <leader>7 :e ~/.config/polybar/config<CR>
map <leader>6 :e ~/.zshrc<CR>

" Add ctrl-tab support
noremap <S-tab> :tabnext<CR>

map <leader>å :TOC<CR>

noremap <CR> <nop>
noremap <Space> <nop>

" because who needs K anywaays
noremap J 5j
noremap K 5k

let g:ctrlp_map = '<c-p>'

" Easy insert exit
inoremap jj <ESC>

" Pandocs
map <leader>mr :Pandoc pdf<CR>
map <leader>mp :Pandoc! pdf<CR>
" map <leader>mp : !zathura --fork 

" Yank to clipboard
map <leader>y "+y
map <leader>v "+p

" Distraction free mode
map <leader><Tab> :Goyo<CR>

" Comment line
map <leader><leader><leader> gcc

" Tabularize init
map <leader>ll :Tabularize /

" NERDTree
" map <leader>å :NERDTreeToggle<CR>
" map <leader>Å :NERDTree $NOTESDIR<CR>

" Close all but current
map <leader>o <C-w>o

" Move to vertical
map <leader>e <C-w>L

" Window navigation
nnoremap <leader>k <C-w>k
nnoremap <leader>j <C-w>j
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l

" Window splits
nnoremap <leader>s <C-w>v

" Window close
nnoremap <leader>c <C-w>c

" Easy bracketing
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

" Rid of command mode
nnoremap Q <nop>

" Forgot sudo? No problem
com W :w !sudo tee %


" }}}
" {{{	Visuals

set linespace=0
" set guifont=FuraMonoForPowerline\ Nerd\ Font:h7
" set guifont=Sauce\ Code\ Powerline:h10
set guifont=Fira\ Mono\ for\ Powerline:h7
" set guifont=Roboto\ Mono\ for\ Powerline:h10
" set guifont=Monaco\ for\ Powerline:h10
colorscheme gruvbox
set termguicolors
let g:gruvbox_contrast_dark = "soft"
let g:gruvbox_termcolors = "256"
set background=dark

" Enable true color for neovim
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

" Enables cursor similar to gui programs
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
" hi Normal guibg=NONE ctermbg=NONE
" }}}
