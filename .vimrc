set noswapfile
set nocompatible
set background=dark
set hlsearch
set incsearch
set smartindent
set clipboard+=unnamed
inoremap $ $$<Left>
inoremap { {}<Left>
inoremap < <><Left>
inoremap [<Enter> []<Left><CR><ESC><S-o>

inoremap ( ()<Left>
inoremap `` ``''<Left><Left>
inoremap " ""<Left>
inoremap ' ''<Left>

nnoremap <Esc><Esc> :nohl<CR>
inoremap <silent> jj <esc>:w<cr>

set number relativenumber
set nu rnu

set backspace=start,eol,indent
set mouse=a
set matchtime=1
set display=lastline
set virtualedit=onemore
set whichwrap=b,s,h,l,<,>,[,]
set nostartofline


call plug#begin()

Plug 'lervag/vimtex'
let g:latex_latexmk_options = '-pdf'
let g:vimtex_view_method = "skim"

Plug 'tomasiser/vim-code-dark'
Plug 'sainnhe/sonokai'
Plug 'w0ng/vim-hybrid'
Plug 'tomasr/molokai'
Plug 'cocopon/iceberg.vim'
Plug 'chrisbra/csv.vim'
Plug 'tpope/vim-repeat'
Plug 'arecarn/vim-spell-utils'
Plug 'ervandew/supertab'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

colorscheme sonokai
syntax on

set spell
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=Blue
hi clear SpellRare
hi SpellRare cterm=underline ctermul=White
hi clear SpellCap
hi SpellCap cterm=underline ctermul=Green
hi clear SpellLocal
hi SpellLocal cterm=underline ctermul=Cyan


set cursorline
hi CursorLine term=NONE ctermfg=Blue ctermbg=Black

set showmatch
hi MatchParen cterm=bold ctermfg=Green ctermbg=Red

set laststatus=2
set statusline=%F%m%h%w\ %<[ENC=%{&fenc!=''?&fenc:&enc}]

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
