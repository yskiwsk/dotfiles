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

"挿入モードでよく使うキーバインド
inoremap <Leader>m <ESC>o
inoremap <Leader>. <C-w>
inoremap <Leader>, <C-u>
inoremap 、ｍ <ESC>o<F15>

"ファイルを保存する（:w<Enter>よりずっと速い）
nnoremap <Leader><Space> :w<CR>

"ファイルを閉じる（:q<Enter>よりずっと速い）
nnoremap <Leader>q :q<CR>

"ファイル、タブ、ウインドウ
nnoremap <Leader>o <C-^>
nnoremap <Leader>e :enew<CR>
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>c :close<CR>

"次の行を画面の中心として再描画する
nnoremap <Leader>n nzz
nnoremap <Leader>N Nzz

"Enterキーと左手によるCtrlショートカット
nnoremap <CR>q <C-q>
nnoremap <CR>w <C-w>
nnoremap <CR>e <C-e>
nnoremap <CR>r <C-r>
nnoremap <CR>t <C-t>
nnoremap <CR>a <C-a>
nnoremap <CR>s <C-s>
nnoremap <CR>d <C-d>
nnoremap <CR>f <C-f>
nnoremap <CR>g <C-g>
nnoremap <CR>z <C-z>
nnoremap <CR>x <C-x>
nnoremap <CR>c <C-c>
nnoremap <CR>v <C-v>
nnoremap <CR>b <C-b>
