set nocompatible
set relativenumber
set number
set nowrap
set autoread
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
set foldmethod=syntax
set foldlevel=99
set background=dark
set hls
set encoding=utf-8
set hidden
set path+=**
set wildmenu
set shell=zsh\ -l
set conceallevel=1
set ttyfast
set lazyredraw
set synmaxcol=1000
set incsearch
set hlsearch
set completeopt-=preview
filetype off
syntax on
packadd! matchit

nnoremap <C-I> :bprev<CR>
nnoremap <C-P> :bnext<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'moll/vim-node'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'mattn/emmet-vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'neoclide/vim-jsx-improve'

Plugin 'raichoo/purescript-vim'

Plugin 'StanAngeloff/php.vim'

Plugin 'keith/swift.vim'

Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'jwalton512/vim-blade'

Plugin 'wavded/vim-stylus'

Plugin 'tikhomirov/vim-glsl'
Plugin 'beyondmarc/opengl.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'chr4/nginx.vim'

Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'unblevable/quick-scope'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'tpope/vim-repeat'
Plugin 'dkprice/vim-easygrep'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sjl/badwolf'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'Valloric/YouCompleteMe'

Plugin 'majutsushi/tagbar'

call vundle#end()

let g:javascript_plugin_jsdoc                   = 1
let g:javascript_plugin_flow                    = 1

let g:airline_powerline_fonts                   = 1
let g:airline#extensions#tabline#enabled        = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:mta_use_matchparen_group                  = 1

let g:NERDTreeWinSize                           = 40
let g:NERDTreeShowLineNumbers                   = 1

let g:UltiSnipsExpandTrigger                    = "<c-b>"
let g:UltiSnipsJumpForwardTrigger               = "<c-c>"

let g:javascript_conceal_function               = "ƒ"
let g:javascript_conceal_null                   = "ø"
let g:javascript_conceal_this                   = "@"
let g:javascript_conceal_return                 = "⇚"
let g:javascript_conceal_undefined              = "¿"
let g:javascript_conceal_NaN                    = "ℕ"
let g:javascript_conceal_prototype              = "¶"
let g:javascript_conceal_static                 = "•"
let g:javascript_conceal_super                  = "Ω"
let g:javascript_conceal_arrow_function         = "⇒"

let g:user_emmet_leader_key                     = '<c-z>'

let g:ctrlp_map = '<leader>t'
let g:ctrlp_custom_ignore = 'node_modules'

let g:EasyGrepCommand = 1
set grepprg=git\ grep\ -n


nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

autocmd BufNewFile,BufReadPost *.styl set filetype=stylus

filetype plugin indent on

colorscheme badwolf
set guifont=Meslo\ LG\ S\ for\ Powerline:h11
highlight Conceal guifg=#f8f6f2 guibg=#1C1B1A cterm=NONE ctermbg=NONE ctermfg=white
