execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme solarized

autocmd vimenter * NERDTree

set number

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set tabstop=4
set shiftwidth=4

set rtp+=/Users/johny/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/

command GitStatus call Git_status() 
command GitAdd call Git_add()
command -nargs=1 GitCommit call Git_commit(<f-args>)
command -nargs=* GitPull call Git_pull(<f-args>)
command -nargs=1 GitPush call Git_push(<f-args>)
