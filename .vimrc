set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set autoindent " 자동 들여쓰기
set ts=4 "tag select
set sts=4 "st select
set sw=1 " 스크롤바 너비
set cindent " C언어 자동 들여쓰기
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

if has("syntax")
    syntax on
endif

colorscheme monokai
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
autocmd vimenter * hi NonText guibg=NONE ctermbg=NONE " transparent bg
