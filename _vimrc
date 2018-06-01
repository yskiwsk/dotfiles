scriptencoding utf-8

"ファイルの場所にカレントディレクトリ移動
":lcd %:h
set autochdir

"エンコーディング
:set enc=utf-8

"一時ファイルを作成しない
:set noswapfile
:set nobackup
:set noundofile
:set viminfo=

"タブ
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop:4
"set list
"set listchars=tab:>-

"検索
set ignorecase
set iskeyword-=_ "アンダースコアも単語の境界として扱う
set showmatch
set matchtime=3 "0.3秒で対のかっこからカーソルが戻ってくる
"set hlsearch "_gvimrcで設定する

"矢印キーを無効にする(将来、べつの機能にマップする予定)
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"その他
set history=200

"キーリマップ
noremap <space> :
