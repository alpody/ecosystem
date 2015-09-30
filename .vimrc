set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'The-NERD-tree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
"Plugin 'phpcomplete.vim'
"taglist.vm
"Plugin 'vim-scripts/taglist.vim'
Plugin 'kien/ctrlp.vim'
"Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
"Plugin 'xolox/vim-misc'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'alvan/vim-php-manual'
Plugin 'Valloric/YouCompleteMe'

Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin '2072/vim-syntax-for-PHP'
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mbbill/undotree'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-repeat'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'chrisbra/csv.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

Plugin 'tobyS/vmustache'
Plugin 'SirVer/ultisnips'
Plugin 'alpody/vim-snippets'

Plugin 'tobyS/pdv'

Bundle 'joonty/vdebug.git'

Bundle 'stephpy/vim-php-cs-fixer'

Plugin 'easymotion/vim-easymotion'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

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
au BufNewFile,BufRead *.phtml set filetype=php

set lazyredraw



" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

syntax enable
"set background=light
"colorscheme  cascadia 
"colorscheme solarized
"
"Developer tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:airline_theme ="hybridline"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers=['php', 'phpcs','phtml']
let g:syntastic_php_phpcs_exec='~/.composer/vendor/bin/phpcs'
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'

let g:snips_author='Alexey B. Podyapolsky (alpody@yandex.ru)'

" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "symfony"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

"NERDTree directory color
"hi Directory ctermfg=6 ctermbg=0 

let g:ctrlp_extensions=['tag','buffertag']
nmap <ESC>b :TagbarToggle<CR>
nmap <ESC>t :NERDTreeToggle<CR>

let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap  \d :call pdv#DocumentWithSnip()<CR>
nmap <ESC>u :UndotreeToggle<cr>
