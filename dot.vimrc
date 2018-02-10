
"#####表示設定#####
"set title "編集中のファイル名を表示
set notitle
syntax on "コードの色分け
set tabstop=4 "インデントをスペース4つ分に設定
set smartindent "オートインデント

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

"--------------------
"" 基本的な設定
"--------------------
"新しい行のインデントを現在行と同じにする
set autoindent 

if has('mouse')
  set mouse=a
endif

syntax on

" 行番号を表示
set number
set laststatus=2
set statusline=%F%r%h%=

" swpを作らない
set noswapfile
