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
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

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


"=========================
" Vundle settings
"=========================
"set nocompatible
filetype off

set rtp+=~/.vim/vundle/
call vundle#rc()

" original repos on github
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'Shougo/neocomplcache'
Bundle 'ujihisa/quickrun'

"=========================
" auto-indent (also gets first-letter automatically)
"=========================
filetype plugin indent on

"=========================
" neocomplcache settings
"=========================
" Use neocomplcache.
 let g:neocomplcache_enable_at_startup = 1
" " Use smartcase.
 let g:neocomplcache_enable_smart_case = 1
" " Use auto select
 "let g:neocomplcache_enable_auto_select = 1
 " Use camel case completion.
 let g:neocomplcache_enable_camel_case_completion = 1
" " Use underbar completion.
 let g:neocomplcache_enable_underbar_completion = 1
" " Set minimum syntax keyword length.
 let g:neocomplcache_min_syntax_length = 3
" " Set manual completion length.
 let g:neocomplcache_manual_completion_start_length = 0

""=========================
" Unite settings
"=========================
let g:unite_enable_start_insert=1
" バッファ一覧
noremap :Unite buffer
" ファイル一覧
noremap :Unite -buffer-name=file file
" 最近使ったファイルの一覧
noremap :Unite file_mru
" ウィンドウを分割して開く
au FileType unite nnoremap unite#do_action(‘split')
au FileType unite inoremap unite#do_action(‘split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap unite#do_action(‘vsplit')
au FileType unite inoremap unite#do_action(‘vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap :q
au FileType unite inoremap :q
" 初期設定関数を起動する
au FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
	" Overwrite settings.
endfunction

""=========================
" VimShell settings
"=========================
nnoremap <silent> vims :VimShell<CR>


