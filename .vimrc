"主题                                                                                      
colorscheme desert
"语法高亮
syntax on
"文件类型识别
filetype on

"显示行号
set number
"自动缩进_缩进量与上一行对齐
set autoindent

"空格代替tab缩进
set tabstop=4
set expandtab

"设置搜索\行高亮
set hlsearch
set cursorline
set cursorcolumn



" 统一缩进为4
"
" 退格缩进
set softtabstop=4
"缩进
set shiftwidth=4

" 我的状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 总是显示状态行
set laststatus=2


"自动补全
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>


"数组则不换行
inoremap { {}<ESC>i
"函数左括号加回车则换行
inoremap {<CR> {<CR>}<ESC>O


inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
filetype plugin indent on

