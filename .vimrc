" Vundle

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" My Bundles
Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'rakr/vim-one'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'gcorne/vim-sass-lint'
Plugin 'raimondi/delimitmate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mileszs/ack.vim'
Plugin 'joshdick/onedark.vim'
" Plugin 'leafgarland/typescript-vim'
" Plugin 'Shougo/vimproc.vim'
" Plugin 'terryma/vim-multiple-cursors'
" Plugin 'suan/vim-instant-markdown'
" Plugin 'hail2u/vim-css3-syntax'
" Plugin 'nelsyeung/twig.vim'
" Plugin 'metakirby5/codi.vim'
" Plugin 'rizzatti/dash.vim'
" Plugin 'mattn/emmet-vim'
" Plugin 'pangloss/vim-javascript'
" Plugin 'bling/vim-airline'
" Plugin 'mxw/vim-jsx'
" Plugin 'JamshedVesuna/vim-markdown-preview'
" Plugin 'cakebaker/scss-syntax.vim'
call vundle#end()            " required

filetype plugin indent on    " required

" Use the Base-16 Dark Themes, set to light for Atom Light
set background=dark

" Atom Dark
colorscheme onedark

" Atom Light
" colorscheme one

" Use Base-16 for Airline
" let g:airline_theme='understated'
"
" Atom theme dark
let g:airline_theme='onedark'
" let g:airline_theme='one'
"
" Atom theme light
" let g:airline_theme='one'

let g:polyglot_disabled = ['scss']

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
" set esckeys
" limit mapping and keycode delays
set timeoutlen=1000 ttimeoutlen=0
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" set lazyredraw
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
" set cursorline
" Don't paint cursor line
" set nocursorline
" Disable all blinking
set guicursor+=a:blinkon0
" Change cursor in insert mode
" let &t_SI = "\<Esc>]1337;CursorShape=1\x7"
" let &t_EI = "\<Esc>]1337;CursorShape=0\x7"
" Set default fonts
" set guifont=Fira\ Mono:h14
" Remove Scroll Bars in MacVim
set guioptions-=L guioptions-=r
" Remove Toolbar in MacVim
set guioptions-=T
" Make tabs as wide as two spaces
set tabstop=2
" When you press the tab key
set expandtab
" When you press >>, << or ==
set shiftwidth=2
" What happens when you press the <TAB>
set softtabstop=2
" Show “invisible” characters
" sset lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set lcs=trail:·,eol:¬,nbsp:_
set list
" Use Ag with [ack.vim][]
let g:ackprg = 'ag --nogroup --nocolor --column'
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
" Split rightward so as not to displace a left NERDTree
let g:ack_mappings = {
      \  'v': '<C-W><CR><C-W>L<C-W>p<C-W>J<C-W>p',
      \ 'gv': '<C-W><CR><C-W>L<C-W>p<C-W>J' }
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
  map <ScrollWheelUp> <C-Y>
  map <ScrollWheelDown> <C-E>
  if !has('nvim')
    " Mouse Click All Over
    if has('mouse_sgr')
      set ttymouse=sgr " See :h sgr-mouse
    elseif $TERM =~# '^\%(screen\|tmux\)'
      set ttymouse=xterm2
    endif
  endif
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
set relativenumber
au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
let save_cursor = getpos(".")
let old_query = getreg('/')
:%s/\s\+$//e
call setpos('.', save_cursor)
call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
" Enable file type detection
filetype on
" Treat .json files as .js
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
" Treat .md files as Markdown
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

" CtrlP Integration
" set runtimepath^=~/.vim/bundle/ctrlp.vim
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Autosave
au FocusLost * :wa

" Switching between splits
 map <leader>h :wincmd h<CR>
 map <leader>j :wincmd j<CR>
 map <leader>k :wincmd k<CR>
 map <leader>l :wincmd l<CR>

" Indent Guide Options
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=10
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#2C323C

" Set the color of line number background
" highlight LineNr ctermbg=10

" Set the color of searched words background
" highlight Search ctermbg=08
" Foreground
" highlight Search ctermfg=00

" Set the color of the vertical split
" highlight VertSplit ctermbg=13
" highlight VertSplit ctermfg=13

" Set the color for NERDTREE
" highlight Directory ctermfg=14
highlight NERDTreeClosable ctermfg=14
highlight NERDTreeOpenable ctermfg=14

" Set the color of CSS property values
" highlight css ctermfg=07 guifg=#abb2bf

" Syntastic HTML5
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_javascript_checkers = ['eslint']

" TypeScript Quick Fix
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Delimate Indent on Code Block with ctrl+c
imap <C-c> <CR><Esc>O

" NERDTree vsplit the new buffer on the right of the current buffer
" set splitright

" Enable line numbers
let NERDTreeShowLineNumbers=1

" Open a NERDTree automatically when vim starts up if no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

" Auto-start NERDTree
" au VimEnter *  NERDTree

" Change window width
let g:NERDTreeWinSize = 50

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" Write a file with Sudo when E212
cmap w!! %!sudo tee > /dev/null

" Disable all bell and audio flashes
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" NerdCommenter Space
let NERDSpaceDelims=1

" Markdown Support
" map <leader>md :%!/usr/local/bin/Markdown.pl --html5tags <cr>
" let vim_markdown_preview_hotkey='<C-m>'
" let vim_markdown_preview_github=1
"
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
