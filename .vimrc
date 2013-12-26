set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"github:
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'c9s/colorselector.vim'
Bundle 'majutsushi/tagbar'
Bundle 'rstacruz/sparkup'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'othree/vim-autocomplpop'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'xuhdev/SingleCompile'
Bundle 'vim-scripts/vimwiki'
"Vim Scripts
Bundle 'FuzzyFinder'
Bundle 'L9'
Bundle 'tComment'
Bundle 'EasyMotion'
Bundle 'AutoClose'
Bundle 'junegunn/vim-easy-align'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=700
" Enable filetype plugins"
filetype plugin on
filetype indent on
filetype on
syntax on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set utf8 as standard encoding and en_US as the standard language"
set encoding=utf-8
set fileencodings=utf-8,cp950
" Ignore case when searching"
set ignorecase
" Highlight search results"
set hls
" When searching try to be smart about cases"
set smartcase
" Makes search act like search in modern browsers"
set incsearch
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color an Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on 
colorscheme Tomorrow-Night-Bright
set t_Co=256
" Set extra options when running in GUI mode"
if has("gui_running")
    set guioptions-=T 
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files , backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn backup off , since most stuff is in svn
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text ,tab and indent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
set smarttab
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set shiftwidth=4
set tabstop=4
set softtabstop=4

set autoindent
set smartindent
set wrap
set ruler
" CursorLine setting"
set cursorline
""hi CursorLine term=none cterm=none ctermbg=88
" Folding setting
set fdm=syntax
set foldnestmax=3

set number
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins setting"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd! GUIEnter * set vb t_vb=
"NerdTree setting
autocmd vimenter * if !argc() | NERDTree | endif
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks = 1
"tComment short cut
map <leader>c <C-_><C-_>
"TagBar setting
nmap <silent><F3> :TagbarToggle<CR>
let g:tagbar_ctags_bin ='/usr/local/bin/ctags'
let g:tagbar_width =30
"easymotion leader key
let g:EasyMotion_leader_key='<leader>'
"ctrlp setting"
let g:ctrlp_custom_ignore = {
            \ 'dir':'\v[\/]\.(git|hg|dll|)$',
            \ 'file':'\v\.(exe|so|dll)$',
            \ 'link':'some_bad_symbolic_links',
            \}
"ignore
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.rar,*.pdf,*.dmg,*.doc,*.tar*,*.Trash/*,*Library*
"snippets setting
let g:acp_behaviorSnipmateLength = 1
"SingleCompile keybinding"
nmap <leader>v :SCCompileRun<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Edit mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    endif

nmap <tab> v> <cr>
nmap <s-tab> v< <cr>
vmap <tab> v> <cr>
vmap <s-tab> v< <cr>


