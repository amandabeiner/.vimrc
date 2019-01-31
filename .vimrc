execute pathogen#infect()
filetype plugin indent on
syntax on

:command W w
:command Wq wq
:command WQ wq

colorscheme gruvbox

set backspace=2
se background=dark
set showmatch
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set number
set smarttab
set expandtab
set number relativenumber
set clipboard+=unnamed

autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown setlocal spell
autocmd FileType markdown set spellfile=~/.vimwords.add

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

:let mapleader = ","

" Search project filenames
nmap <leader>f :FZF<CR>

" Search all files with Silver Searcher
nmap <leader>a :Ag<CR>

" Search open buffers
nmap <leader>b :Buffers<CR>

vnoremap <leader>c :w !pbcopy<CR><CR>
noremap <leader>v :r !pbpaste<CR><CR>
set runtimepath^=~/.vim/bundle/ag
