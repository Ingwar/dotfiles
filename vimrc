set nocompatible
syntax on

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2

set wildmenu
set wildmode=longest:full,full

" Enable line numbers
set number
" set relativenumber

" Choose color scheme
colorscheme rdark

" Enable Doxygen syntax highlighting
let g:load_doxygen_syntax=1
let g:doxygen_enhanced_colour=1

" Enable drag-and-drop for tabs
set mouse=a

" Highlight search results
set hlsearch

" Enable incremental search
set incsearch

"Status line settings
set laststatus=2
set statusline=\ %<%f\                          " Filename
set statusline+=%w%h%m%r                        " Options
set statusline+=%{fugitive#statusline()}        " Git Hotness
set statusline+=\ [%{&ff}/%Y]                   " filetype
set statusline+=\ [%{getcwd()}]                 " current dir
set statusline+=%=
set statusline+=%l/%L,%c%V\                     " Right aligned file nav info

set go-=m
set go-=T  "remove toolbar
set go-=r  "remove right-hand scroll bar
set go-=L  "remove left-hand scroll bar
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
set guiheadroom=0

" Turn on spell checking
set spell spelllang=en_us

" Turn on spell checking for git commit messages
autocmd FileType gitcommit setlocal spell spelllang=en_us

" Turn on spell checking-based word completion
"
set complete+=kspell


"""""""""""""""""""""""""""
"Plugin management
""""""""""""""""""""""""""
filetype off "Required by Vundle


"initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Mangament of Vundle itself
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""""""""""
"List of installed plugins
""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-scala'
Plugin 'wting/rust.vim'
Plugin 'vhdirk/vim-cmake'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'blueshirts/darcula'
Plugin 'freeo/vim-kalisi'

call vundle#end()
filetype plugin indent on
""""""""""""""""""""""""""
"Settings for various plugins
""""""""""""""""""""""""""

" Setup session management
let g:session_autosave='yes'
let g:session_autoload='yes'
let g:session_default_to_last=1
let g:session_autosave_periodic=3

"
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1


"Add git status to status line
"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%{fugitive#statusline()}%h%m%r%y%=%c,%l/%L\ %P

"Highlight word under cursor
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

"Turn off swapfiles
set noswapfile
set backupdir=~/.vim/backups

let g:airline_powerline_fonts = 1
"hi Normal guifg=#d8d8d8 guibg=#34363a font='Inconsolata-dz for powerline' font='Meslo LG L DZ 10'
"hi Comment guifg=#767f8c
"hi Number guifg=#ac92ec
"hi String guifg=#f7e3ba
"hi Boolean guifg=#ec87c0
"hi NonText guifg=bg
"hi CursorLine guibg=#3e4145
"hi StatusLine gui=bold guibg=#4a4d52
"hi StatusLineNC gui=bold guibg=#4a4d52 guifg=#222
"hi VertSplit gui=None guibg=#4a4d52 guifg=#4a4d52
"hi LineNr guifg=#868789
"hi SignColumn guibg=bg
"hi SpecialKey guifg=#567

let g:airline_section_z = '%l/%L,%v'
let g:airline_theme='bubblegum'

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree ~/dev/ | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufNew * wincmd l

let g:NERDTreeChDirMode=2
let g:NERDTreeMinimalUI=1
let g:NERDTreeShowBookmarks=1

" Fix for YouCompleteMe and CUDA
autocmd FileType cuda set ft=cpp.cuda


set t_Co=256

" in case t_Co alone doesn't work, add this as well:
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

