"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/shiinaahmad/.vim/bundle/neobundle.vim/
  endif

  " Required:
  call neobundle#begin(expand('/Users/shiinaahmad/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {
          \ 'build' : {
          \     'windows' : 'make -f make_mingw32.mak',
          \     'cygwin' : 'make -f make_cygwin.mak',
          \     'mac' : 'make -f make_mac.mak',
          \     'unix' : 'make -f make_unix.mak',
          \    },
          \ }

" Add or remove your Bundles here:
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
" NeoBundle 'ctrlpvim/ctrlp.vim'
" NeoBundle 'flazz/vim-colorschemes'
" NeoBundle 'bling/vim-airline'
"NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/neocomplcache.vim'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


set shell=/bin/bash

syntax on
set nocompatible	" Use Vim defaults (much better!)
set bs=2		" indent,eol,start
set history=50		" keep 50 lines of command line history
set hidden
set list
set showmatch
set whichwrap=b,s,h,l,<,>,[,]
set hlsearch
set viminfo='20,<1000,s10,h
autocmd Filetype * set formatoptions-=r

"------------------
" mouse setting
"set ttymouse=xterm2
"set mouse=a

"------------------
" tab setting
set tabstop=4
setlocal shiftwidth=4
"set autoindent
"set smartindent

"------------------
" design
set listchars=tab:>\ ,extends:<
set number
highlight LineNr ctermfg=darkgrey
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"------------------
" other settings
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"------------------
" encodes
set termencoding=utf-8
set fileencodings=utf-8,euc-jp,sjis
"autocmd FileType html :set  encoding=sjis

"-----------------
" key mapping
"nnoremap <C-g> :! apachectl graceful <Enter> 
nnoremap <C-c>p :! php -l % <Enter>
inoremap <C-d> error_log("");
nnoremap <C-e>s :set encoding=sjis <Enter>
nnoremap <C-e>u :set encoding=utf-8 <Enter>
nnoremap <C-e>e :set encoding=euc-jp <Enter>

set backspace=indent,eol,start
"map! ^K ^[		" something for the mac...

"-----------------
" syntastic config
nnoremap <C-c>e :SyntasticCheck<Enter>:Errors<Enter>

"-----------------
" neocomplcache 
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'
" neocomplcache dict
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scala' : $HOME.'/.vim/bundle/vim-scala/dict/scala.dict',
    \ 'java' : $HOME.'/.vim/dict/java.dict',
    \ 'c' : $HOME.'/.vim/dict/c.dict',
    \ 'cpp' : $HOME.'/.vim/dict/cpp.dict',
    \ 'javascript' : $HOME.'/.vim/dict/javascript.dict',
    \ 'ocaml' : $HOME.'/.vim/dict/ocaml.dict',
    \ 'perl' : $HOME.'/.vim/dict/perl.dict',
    \ 'php' : $HOME.'/.vim/dict/php.dict',
    \ 'scheme' : $HOME.'/.vim/dict/scheme.dict',
    \ 'vm' : $HOME.'/.vim/dict/vim.dict'
    \ }



