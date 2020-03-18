set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" monokai improvements
" ===================================================================
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1


" Lets you pick theme on time-of-day
" ===================================================================
" if strftime("%H") < 9
"  colorscheme flattened_light
" else
"   colorscheme flattened_dark
" endif

" Override
" colorscheme flattened_light

" Theme settings
" ===================================================================
"   Options solarized, default, molokai
let g:lightline = {'colorscheme': 'molokai'}

" Mouse settings
" ===================================================================
set mouse=a

" Clipboard sharing on mac
" ===================================================================
" set clipboard=unnamed

" Read-only text settings
" ===================================================================
set linebreak
set list

" tab settings
" ===================================================================
set tabstop=4     "  tabs are at proper location
set expandtab     "  don't use actual tab character (ctrl-v)
set shiftwidth=4 "  indenting is 4 spaces
set autoindent    "  turns it on
set smartindent   "  does the right thing (mostly) in programs
set cindent       "  stricter rules for C programs

" Search ctags
" ===================================================================
nnoremap <leader>. :CtrlPTag<cr>

" ctrlp optimization
" ===================================================================
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = 'venv\|.git'


" Easier navigation between windows
" ===================================================================
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



" NERDTree
" ===================================================================
nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
hi VertSplit ctermbg=255 ctermfg=0
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
let NERDTreeRespectWildIgnore=1


" Clean Folding
" ===================================================================
" function! NeatFoldText() "{{{2
"   let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
"   let lines_count = v:foldend - v:foldstart + 1
"   let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
"   let foldchar = matchstr(&fillchars, 'fold:\zs.')
"   let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
"   let foldtextend = lines_count_text . repeat(foldchar, 8)
"   let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
"   return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
" endfunction
" set foldtext=NeatFoldText()
" }}}2
"

" Easier search
" ===================================================================
set hlsearch
hi Search cterm=NONE ctermfg=grey ctermbg=blue
