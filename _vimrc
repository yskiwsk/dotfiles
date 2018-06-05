scriptencoding utf-8

" いったんすべての設定を既定値に戻す
set all&

" ビープ音と画面フラッシュを消す
set visualbell t_vb=

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
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"不可視文字
set showbreak=\\ "行が折り返された場合の目印
set list
set listchars=tab:»-,trail:_,extends:»,precedes:«,nbsp:%,eol:↲

"その他表示関係
set number              " 行番号
set title               " ファイル名・現在地
set wrap                " 長いテキストの折り返し
set textwidth=0         " 自動的に改行が入るのを無効化
set colorcolumn=80      " その代わり80文字目にラインを入れる

"検索
set ignorecase
set iskeyword-=_ "アンダースコアも単語の境界として扱う
set showmatch
set matchtime=3 "0.3秒で対のかっこからカーソルが戻ってくる
"set hlsearch "これはなぜか_gvimrcで設定するらしい

"OSのクリップボードに対応する
set clipboard=unnamed,autoselect

"コマンド履歴
set history=200

" 対応括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>

" TABでペアの括弧にジャンプ
nnoremap <Tab> %
vnoremap <Tab> %

" バックスペースでなんでも消せるようにする
set backspace=indent,eol,start

" バックスラッシュやクエスチョンを状況に合わせ自動的にエスケープ
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'


"矢印キーを無効にする(将来、べつの機能にマップする予定)
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"
"キーバインド
"

"セミコロン/コロンを入れ替えると、コマンドモードに入りやすい
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" jj または Ctrl-l を使うと挿入モードから抜けやすい
" （既定ではEscape, Ctrl-[, Ctrl-c）
inoremap <silent> jj <ESC>
inoremap <silent> <C-l> <ESC>
vnoremap <silent> <C-l> <ESC>
cnoremap <silent> <C-l> <C-u><ESC>

"検索結果ハイライトの消去
nnoremap <C-n> :<C-u>nohlsearch<CR><Esc>

"検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" vを二回で行末まで選択
vnoremap v $h

" TABにて対応ペアにジャンプ
nnoremap <Tab> %
vnoremap <Tab> %

"リーダーをコンマにすると押しやすい
"本当はスペースキーにすると左右どちらの親指でも押せてさらによいのだが、SandSと相性が悪いので妥協する
"let mapleader = " "
let mapleader = ","
noremap \ ,
 
"挿入モードとコマンドモードでよく使うキーバインド
inoremap <Leader>d <C-w>
inoremap <Leader>a <C-u>
vnoremap <Leader>d <C-w>
vnoremap <Leader>a <C-u>

"ファイルを保存する（:w<Enter>よりずっと速い）
"nnoremap <Leader><Space> :w<CR> " SandSと相性が悪いため使わない
nnoremap <Leader>m :w<CR>
nnoremap <Leader>, :x<CR>

"ファイルを閉じる（:q<Enter>よりずっと速い）
nnoremap <Leader>q :q<CR>

"ファイル、タブ、ウインドウ
nnoremap <Leader>o <C-^> "直前のファイルを開く
nnoremap <Leader>w <C-w>w
nnoremap <Leader>e :enew<CR>
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>v :vsplit<CR>
nnoremap <Leader>c :close<CR>

