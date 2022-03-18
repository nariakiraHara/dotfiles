" ここからVundle.vimの設定
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
Plugin 'scrooloose/nerdtree'

" typescript plugin
Plugin 'Quramy/tsuquyomi-vue'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ここまでVundle.vimの設定

syntax on
colorscheme slate

""#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "オートインデント

""#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検


autocmd ColorScheme * highlight Comment ctermfg=22 guifg=#008800
autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html

set clipboard+=unnamed

set encoding=utf-8
scriptencoding utf-8

" tabのスペースの設定
set tabstop=2
set shiftwidth=2
set expandtab

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

"閉じタグ自動補完
inoremap <expr> % Lt_Percent_Completion()
function Lt_Percent_Completion()
 if matchstr(getline('.'), '.', col('.') -1 ) == ">"
   return "\%\%\<Left>"
  else
    return "\%"
  end
endf

"jjを打つことでインサートモード終了
inoremap <silent> jj <ESC>
"矢印キーの代用
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-h> <Left>
imap <C-l> <Right>

"行頭移動(normal mode)
noremap gh ^
noremap gl $
"
"行頭へ移動
inoremap <C-a> <C-o>^
"行末へ移動
inoremap <C-e> <C-o>$

set fileencoding=utf-8 " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される
set ambiwidth=double " □や○文字が崩れる問題を解決

set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=2 " 画面上でタブ文字が占める幅
set softtabstop=2 " 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅

" 行の構文をチェックし次の行のインデントを増減する
"tで増減する幅

" ルサーチ. 文字入力毎に検索を行うに大文字小文字を区別しない 大文字を含んでいたら大文字小文字を区別する
set hlsearch " 検索結果をハイライト

"
set whichwrap=b,s,h,l,<,>,[,],~ " カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set number " 行番号を表示
set cursorline " カーソルラインをハイライト
"
" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

"""""""""""""""""""""""""""""""
"" 自動的に閉じ括弧を入力
"" """"""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
"" """"""""""""""""""""""""""""""
"自動で閉じタグを補完する
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype rb inoremap <buffer> </ </<C-x><C-o>
augroup END

"""""""""""

"""""""""""""""""""""""""""""""
"NERD Treeの設定（管理は一番上のvundleファイル)
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
let NERDTreeShowHidden = 1
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"""""""""""""""""""""""""""""""
