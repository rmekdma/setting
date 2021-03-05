set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set autoindent " 자동 들여쓰기
set expandtab
set ts=4 "tag select
set sts=4 "st select
set sw=1 " 스크롤바 너비
set cindent " C언어 자동 들여쓰기
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set nowrap
set mouse=a

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

if has("syntax")
    syntax on
endif

" file is large from 10mb
let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile 
  au!
  autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

function! LargeFile()
 " no syntax highlighting etc
 set eventignore+=FileType
 " save memory when other file is viewed
 setlocal bufhidden=unload
 " is read-only (write with :w new_filename)
 setlocal buftype=nowrite
 " no undo possible
 setlocal undolevels=-1
 " display message
 autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, so some options are changed (see .vimrc for details)."
endfunction

colorscheme monokai
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
autocmd vimenter * hi NonText guibg=NONE ctermbg=NONE " transparent bg

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
