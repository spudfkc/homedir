syntax on
syntax enable
set background=dark

set nocompatible
set number
set t_Co=256

set expandtab
set tabstop=4
set shiftwidth=4
set textwidth=120
set smarttab
set smartindent
set ruler
"set relativenumber
"set ttyfast
set backspace=indent,eol,start
set autoread
set more
set cursorline!

" Make vim-airline appear all the time
set laststatus=2

" figure out what these do
filetype on
filetype plugin on
filetype indent on
set autowrite

" Visualize tabs, trailing whitespaces and funny characters
" "
" http://www.reddit.com/r/programming/comments/9wlb7/proggitors_do_you_like_the_idea_of_indented/c0esam1
" " https://wincent.com/blog/making-vim-highlight-suspicious-characters

set list
set listchars=nbsp:¬,tab:»·,trail:·

hi User1 ctermfg=196 guifg=#eea040 guibg=#222222
hi User2 ctermfg=75 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 ctermfg=239 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222

" Statusline
" https://github.com/pengwynn/dotfiles/blob/master/vim/vimrc.symlink#L160
set statusline=                                     " Override default
" " set statusline+=%1*%{fugitive#statusline()[4:-2]}%* " Show fugitive git info
set statusline+=%2*\ %f\ %m\ %r%*                   " Show filename/path
set statusline+=%3*%=%*                             " Set right-side status info after this line
set statusline+=%4*%l/%L:%v%*                       " Set <line number>/<totallines>:<column>
set statusline+=%5*\ %*                             " Set ending space

try
    execute pathogen#infect()
catch
    echo "Pathogen not found!"
endtry

try
    "colorscheme solarized
    colorscheme Monokai
catch
    echo "Monokai colorscheme not found!"
endtry

