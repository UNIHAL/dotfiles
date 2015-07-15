""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'
" HTML補完
NeoBundle 'mattn/emmet-vim'
" NeoBundle 'taichouchou2/surround.vim'
" NeoBundle 'open-browser.vim'
" NeoBundle 'mattn/webapi-vim'
" NeoBundle 'tell-k/vim-browsereload-mac'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'pangloss/vim-javascript'
" NeoBundle 'taichouchou2/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'

" NeoBundle 'AtsushiM/search-parent.vim'
" NeoBundle 'AtsushiM/sass-compile.vim'

" 括弧を入力した際、自動的にとじ括弧を挿入してくれるプラグイン
NeoBundle 'Townk/vim-autoclose'
" ちょっとしたコード片を書いて実行して確認
" NeoBundle 'thinca/vim-quickrun'
" ディレクトリを再帰的にgrepして一覧を表示したかと思いきや、その一覧で開きたいファイル名を選択すると、そのファイルを開いてくれちゃったりします
NeoBundle 'grep.vim'
" シンタックスチェック
NeoBundle 'scrooloose/syntastic'

call neobundle#end()

" Required:
filetype plugin indent on
syntax on
vnoremap <silent> > >gv
vnoremap <silent> < <gv
"新しい行のインデントを現在行と同じにする
set autoindent
"シフト移動幅
set shiftwidth=2
""検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
""行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"ファイル内の <Tab> が対応する空白の数
set tabstop=2


"----------------------------------------
" zencoding
"----------------------------------------
" codaのデフォルトと一緒にする
imap <C-E> <C-Y>,
let g:user_zen_leader_key = '<C-Y>'
" 言語別に対応させる
let g:user_zen_settings = {
      \  'lang' : 'ja',
      \  'html' : {
      \    'filters' : 'html',
      \    'indentation' : ' '
      \  },
      \  'css' : {
      \    'filters' : 'fc',
      \  },
      \}
 
"----------------------------------------
" open-browsere
"----------------------------------------
" カーソル下のURLをブラウザで開く
"nmap <Leader>o <Plug>(openbrowser-open)
"vmap <Leader>o <Plug>(openbrowser-open)
" ググる
"nnoremap <Leader>g :<C-u>OpenBrowserSearch<Space><C-r><C-w><Enter>

"----------------------------------------
" vim-browsereload-mac
"----------------------------------------
" リロード後に戻ってくるアプリ 変更してください
"let g:returnApp = \"Terminal\"
"nmap <Space>bc :ChromeReloadStart<CR>
"nmap <Space>bC :ChromeReloadStop<CR>
"nmap <Space>bf :FirefoxReloadStart<CR>
"nmap <Space>bF :FirefoxReloadStop<CR>
"nmap <Space>bs :SafariReloadStart<CR>
"nmap <Space>bS :SafariReloadStop<CR>
"nmap <Space>bo :OperaReloadStart<CR>
"nmap <Space>bO :OperaReloadStop<CR>
"nmap <Space>ba :AllBrowserReloadStart<CR>
"nmap <Space>bA :AllBrowserReloadStop<CR>
 
"------------------------------------
" sass
"------------------------------------
"let g:sass_compile_auto   = 1
"let g:sass_compile_cdloop = 5
"let g:sass_compile_cssdir = ['css', 'stylesheet']
"let g:sass_compile_file   = ['scss', 'sass']
"let g:sass_started_dirs   = []
"let g:sass_compile_beforecmd = ''
"let g:sass_compile_aftercmd = ''
 
"autocmd FileType scss,less,sass  setlocal sw=2 sts=2 ts=2 et
"au! BufWritePost * SassCompile

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
""""""""""""""""""""""""""""""
