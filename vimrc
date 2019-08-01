" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2017 Sep 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
"
call plug#begin()
	Plug 'Jiangmiao/auto-pairs'

call plug#end()

hi SpellBad ctermbg=white ctermfg=black
let g:ale_c_parse_compile_commands = 1
let g:ale_c_parse_makefile = 1

if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
if !has("nvim")
	source $VIMRUNTIME/defaults.vim
endif

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if !has("nvim") && has('syntax') && has('eval')
  packadd! matchit
endif

" Enable folding
set foldmethod=indent
set smartindent

"change tab size to 4
set tabstop=4
set shiftwidth=4

set nofoldenable

"Changes ctrl w tabs to be created in these directions
set splitbelow
set splitright

set backupdir=/home/critzlez/.vim/backups//
set directory=/home/critzlez/.vim/swaps//
set undodir=/home/critzlez/.vim/undos//
set mouse=r
set number
set rnu

" Change folded highlight color
hi folded ctermbg=232 ctermfg=white

" Using 232 makes tty default to black, which is exactly what 232 is. tty and
" Xresources colorschemes messes up because the foreground doesnt default to
" a uniform color that contrasts well with the bg
hi Search ctermbg=white ctermfg=black

" Same reason as before. bg makes it hard to see the text, so it defaults to
" black
hi Visual ctermfg=232

hi LineNr ctermfg=gray
hi CursorLineNr ctermfg=gray
" makes all matches in one line get substituted 
set gdefault

" Ignore cases, but don't ignore them if there is a capital in the search
" pattern
set ignorecase
set smartcase

set undolevels=5000
set guicursor=

tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <A--> <C-w>-
nnoremap <A-=> <C-w>+
nnoremap <A-0> <C-w>=

