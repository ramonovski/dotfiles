" ------------------------------------------------------
" file:     $HOME/.vimrc
<<<<<<< HEAD
" author:   Ramon Solis  
" modified: June 2013
" vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=vim:
" ------------------------------------------------------

set t_Co=256            " Enable 256 colors
colorscheme xoria256    " Set the colorscheme
set nocompatible 	    " VIM
=======
" author:   Ramon Solis - http://cyb3rpunk.wordpress.com
" modified: January 2011
" vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=vim:
" ------------------------------------------------------

" -----------
" colorscheme
" -----------
"
"if !has("gui_running")
"    colorscheme zenburn
"endif

set nocompatible 	    " This is fucking vim
"colorscheme herald
>>>>>>> 8d7f1ea8337e0138fcde1430fd1275fbc5d0f0b4
set background=dark     " Darky
set number              " Set numbers 
set showmatch		    " Show matching brackets

<<<<<<< HEAD
filetype off
=======
filetype plugin on
>>>>>>> 8d7f1ea8337e0138fcde1430fd1275fbc5d0f0b4
syntax on

set backspace=indent,eol,start " Make backspace work as usual
set tabstop=4

set shiftwidth=4
set encoding=utf-8 	    " Unicode support
set novisualbell 	    " Don't blink

" ------
" Indent
" ------
set autoindent          " Auto indenting
set smartindent 	    " Smart indenting 

" -----------
" Status line
" -----------
set showcmd 		    " Show (partial) command in status line
set showmode            " Show mode in status line
set cmdheight=1         " Set height of command
set laststatus=2 	    " Always show the status line
set statusline=\ \%f%m%r%h%w\ ::\ %y\ [%{&ff}]\%=\ [%p%%:\ %l/%L]\  " Credits to http://jasonwryan.com/

<<<<<<< HEAD
=======

>>>>>>> 8d7f1ea8337e0138fcde1430fd1275fbc5d0f0b4
set mat=5   		    " How many tenths of a second to blink matching brackets for

" ------
" Search
" ------
set nohlsearch 		    " Do not highlight the string we searched
set incsearch 			" Incremental search: Highlight the searched string, while typing
set ignorecase          " Case-insensitive search
set smartcase           " Upper-case sensitive search
set wrapscan            " searches wrap back to the top of file

set fileformats=unix	" 
set ruler
set wrap                " wrap long lines to fit terminal width
<<<<<<< HEAD
set backupdir=~/.vim/backup  " 
set updatecount=200
set autochdir
set ttyfast             " tell vim we're using a fast terminal for redraws
set autoread            " Reload file if vim detects it changed elsewhere
set shell=/usr/bin/zsh  " Default shell type
=======
set nobackup            " Disable backup
set swapfile
set updatecount=200
set directory=$HOME/.vim/tmp
set autochdir
set ttyfast             " tell vim we're using a fast terminal for redraws
set autoread            " Reload file if vim detects it changed elsewhere
set shell=/bin/zsh      " Default shell type
>>>>>>> 8d7f1ea8337e0138fcde1430fd1275fbc5d0f0b4
set history=666         " Lines of command history
set undolevels=666      " Set undo level
set title               " Set window title with the vim file
set ofu=syntaxcomplete#Complete
set nostartofline       " remember the cursor position
set lazyredraw

<<<<<<< HEAD
" Remember cursor last position
au BufWinLeave * mkview
au BufWinEnter * silent loadview
=======
"set spell
"set colorcolumn=120

" --------
" NERDTree
" --------
" autocmd VimEnter * NERDTree " Start NERDTree 
" autocmd VimEnter * wincmd p " Focus on main window
let NERDTreeWinSize=25  " Increase window size to 35 columns
nmap <silent> <F7> :NERDTreeToggle<CR> " map <F7> to toggle NERDTree window
let NERDTreeShowHidden=1    " Show hidden files 
>>>>>>> 8d7f1ea8337e0138fcde1430fd1275fbc5d0f0b4

" -------------
" mapping stuff
" -------------
<<<<<<< HEAD
":nmap <C-t> :tabnew .<CR>
":imap <C-t> <Esc>:tabnew .<CR>

" H & L to navigate trough the tabs
:map <S-h> gT
:map <S-l> gt

" Vundle 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'MarcWeber/vim-addon-mw-utils.git'
Bundle 'tomtom/tlib_vim.git'
Bundle 'garbas/vim-snipmate.git'
Bundle 'honza/vim-snippets.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on
=======
:nmap <C-t> :tabnew .<CR>
:imap <C-t> <Esc>:tabnew .<CR>
:map <C-w> :tabclose<CR>

" H|L to navigate trough the tabs
:map <S-h> gT
:map <S-l> gt

":nmap <C-a> :%y<CR>     " Yank all
:nmap <C-d> :1,$d<CR>   " Delete all
:map <C-o> O<Esc><CR>

>>>>>>> 8d7f1ea8337e0138fcde1430fd1275fbc5d0f0b4
