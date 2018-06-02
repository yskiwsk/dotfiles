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

"不可視文字
set showbreak=\\ "行が折り返された場合の目印
"set list
"set listchars=tab:>-
set listchars=tab:>-,trail:_,extends:>,precedes:<,nbsp:~

"検索
set ignorecase
set iskeyword-=_ "アンダースコアも単語の境界として扱う
set showmatch
set matchtime=3 "0.3秒で対のかっこからカーソルが戻ってくる
"set hlsearch "これはなぜか_gvimrcで設定するらしい

"行番号
set number

"システムのクリップボードにコピー＆ペーストする
set clipboard=unnamed,autoselect

"矢印キーを無効にする(将来、べつの機能にマップする予定)
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"その他
set history=200

"キーバインド

"セミコロン/コロンを入れ替えると、コマンドモードに入りやすい
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" jj または Ctrl-l を使うと挿入モードから抜けやすい
inoremap <silent> jj <ESC>
inoremap <silent> <C-l> <ESC>
vnoremap <silent> <C-l> <ESC>
cnoremap <silent> <C-l> <C-u><ESC>

"挿入モードから抜けるつもりで間違って”っj”と入力しても大丈夫（Enterキーは必要）
inoremap <silent> っｊ <ESC>

"ノーマルモードで日本語入力がオンのまま操作を始めても大丈夫(Enterキーは必要)
nnoremap ｈ h
nnoremap ｊ j
nnoremap ｋ k
nnoremap ｌ l

nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o

"検索結果ハイライトの消去
nnoremap <C-j><C-j> :<C-u>nohlsearch<CR><Esc>

"リーダーをコンマにすると押しやすい
"本当はスペースキーにすると左右どちらの親指でも押せてさらによいのだが、SandSと相性が悪いので妥協する
let mapleader = ","
noremap \ ,

"ファイルを保存する（:w<Enter>よりずっと速い）
nnoremap <Leader>w :w<CR>

"ファイルを閉じる（:q<Enter>よりずっと速い）
nnoremap <Leader>q :q<CR>

"直前のファイルを開く
nnoremap.<Leader>. <C-^>

"次の行を画面の中心として再描画する
nnoremap <Leader>n nzz
nnoremap <Leader>N Nzz

