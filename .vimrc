 syntax enable
 set number

 set clipboard=unnamed
 set backspace=2 " make backspace work like most other apps

 set nocompatible               " be iMproved
 filetype off                   " required!

 "
 "
 " Mapping keys
 "
 "
 " Ctrl - save
 inoremap <C-s> <Esc>:w<CR>a
 nnoremap <C-s> :w<CR>a
	
 " NERDTree
 nnoremap <C-e> :NERDTreeToggle<CR>
 nnoremap <C-z> :NERDTreeCWD<CR>
 
 " Tab navigation like Firefox.
 nnoremap <C-a> :bprevious<CR>
 nnoremap <C-b>   :bnext<CR>

 " Allow us to use Ctrl-s and Ctrl-q as keybinds
 " silent !stty -ixon

 " Restore default behaviour when leaving Vim.
 " autocmd VimLeave * silent !stty ixon


 " Highlight Search
 set hlsearch

 " Tab key == 2 spaces and auto-indent
 set smartindent
 set tabstop=2
 set shiftwidth=2
 set rtp+=~/.vim/bundle/vundle/
 "set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

 " Code Folding Javascript syntax
 " au FileType javascript call JavaScriptFold()

 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'
 Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 Bundle 'vim-airline/vim-airline'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 Bundle 'flazz/vim-colorschemes'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 " Bundle 'file:///Users/gmarik/path/to/plugin'
 Bundle 'https://github.com/scrooloose/nerdtree.git'
 Bundle 'https://github.com/vim-scripts/Emmet.vim.git'
 Bundle 'https://github.com/gregsexton/MatchTag.git'
 Bundle 'https://github.com/jelera/vim-javascript-syntax.git'
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

" Copy And Paste
if &term =~ "xterm.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
    cmap <Esc>[200~ <nop>
    cmap <Esc>[201~ <nop>
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

set encoding=utf-8
"let g:NERDTreeDirArrows=0
let g:Powerline_symbols = 'fancy'
" Powerline Global, not only when nerdtree is open
set laststatus=2

