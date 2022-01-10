set nocompatible              " be iMproved, required
set mouse=a 
"for resize window
set ttymouse=sgr

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
"Plugin 'The-NERD-tree'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
Plugin 'mattn/emmet-vim'
"Plugin 'phpcomplete.vim'
"taglist.vm
"Plugin 'vim-scripts/taglist.vim'
Plugin 'ctrlpvim/ctrlp.vim'
"not support plugin ctrlp
"Plugin 'kien/ctrlp.vim'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'jlanzarotta/bufexplorer'
"Plugin 'alvan/vim-php-manual'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Shougo/vimproc.vim'
"Plugin 'Shougo/vimshell.vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin '2072/PHP-Indenting-for-VIm'
"Plugin '2072/vim-syntax-for-PHP'
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mbbill/undotree'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-repeat'
"Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'benmills/vimux'
Plugin 'chrisbra/csv.vim'
"For perl regex
"Plugin 'othree/eregex.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tobyS/vmustache'
"Plugin 'SirVer/ultisnips'
"Plugin 'alpody/vim-snippets'
Plugin 'tobyS/pdv'
"Bundle 'joonty/vdebug.git'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'easymotion/vim-easymotion'
"Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mhinz/vim-signify'
" has bug with work ag+ask
Plugin 'dkprice/vim-easygrep'
"Plugin 'vim-scripts/dbext.vim'
Plugin 'vim-scripts/SQLComplete.vim'
Plugin 'mileszs/ack.vim'
"Plugin 'embear/vim-localvimrc'
Plugin 'c9s/phpunit.vim'
Plugin 'stanangeloff/php.vim'
Plugin 'mtscout6/vim-tagbar-css'
Plugin 'arnaud-lb/vim-php-namespace'
"Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
"Plugin 'raimondi/delimitmate'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'

"Color schema
Plugin 'tomasr/molokai' 
Plugin 'nanotech/jellybeans.vim'
Plugin 'damage220/solas.vim'
Plugin 'fatih/vim-go'
Plugin 'posva/vim-vue'
Plugin 'neoclide/coc-vetur'
Plugin 'ryanoasis/vim-devicons'

"Start Screen
Plugin 'mhinz/vim-startify'

"Tabline modify
Plugin 'bagrat/vim-buffet'
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>

let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"

" End Tabline config

"Start yaml
" see more: https://www.arthurkoziel.com/setting-up-vim-for-yaml/

Plugin 'Yggdroot/indentLine'
Plugin 'pedrohdz/vim-yaml-folds'

Plugin 'dense-analysis/ale' 


autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set foldlevelstart=20

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

"End yaml 

Plugin 'b0o/builder.vim'
Plugin 'b0o/quicktemplate.vim', {'depends': 'b0o/builder.vim'}

if has('nvim')
  "Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  "Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
  "Plugin 'deoplete-plugins/deoplete-go', { 'do': 'make'}
" AutoComplete for php  
  Plugin 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
  Plugin 'kristijanhusak/deoplete-phpactor'
" AutoComplete for javascript
  "Plugin 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  "Plugin 'leafgarland/typescript-vim' " TypeScript syntax
  "Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
  "Plug 'jparise/vim-graphql'        " GraphQL syntax
  Plugin 'neoclide/coc.nvim' , { 'branch' : 'release' }

  Plugin 'honza/vim-snippets'
  let g:coc_global_extensions = [ 'coc-tsserver' ]
endif
let g:deoplete#enable_at_startup = 1
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Plugin 'mwiki/vimwiki'

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
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
let mapleader=" "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:airline_left_sep='►'
let g:airline_right_sep='◄'
let g:airline_theme ="hybridline"
let g:airline#extensions#tabline#enabled = 1
"for show airline in single window
set laststatus=2
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_checkers=['php', 'phpcs','phtml']
let g:syntastic_php_phpcs_exec='~/.composer/vendor/bin/phpcs'
let g:syntastic_php_phpcs_args='--standard=~/projects/ecosystem.git/psr2-light.xml -n'

let g:snips_author='Alexey B. Podyapolsky (alpody@yandex.ru)'

" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "symfony"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

"NERDTree directory color
"hi Directory ctermfg=6 ctermbg=0 

let g:ctrlp_extensions=['tag','buffertag']
nmap <SPACE>b :TagbarToggle<CR>
nmap <SPACE>t :NERDTreeToggle<CR>

let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-g>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nmap <SPACE>d :call pdv#DocumentWithSnip()<CR>
nmap <SPACE>u :UndotreeToggle<cr>

" toggle color scheme
nmap <SPACE>sb :colorscheme blue<cr>
nmap <SPACE>sd :colorscheme default<cr>

" change file format
nmap <SPACE>ffu :set ff=unix<cr>
nmap <SPACE>ffd :set ff=dos<cr>

" changes file encoding
nmap <SPACE>feu :set fenc=utf-8<cr>
nmap <SPACE>few :set fenc=cp-1251<cr>

" convert escaped unicode code to char \uxxxx to char
nmap <SPACE>euc %s#\v\\u([0-9a-f]{4})#\=nr2char(str2nr(submatch(1),16))#g

" parameter for Markdown modules
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_level = 3
"let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_emphasis_multiline = 0
"let g:vim_markdown_conceal = 0
autocmd BufNewFile,BufRead *.md set filetype=markdown
nmap <SPACE>nh :nohlsearch<cr>
nmap <SPACE>pa :set paste<cr>
nmap <SPACE>npa :set nopaste<cr>
nmap <SPACE>gs :Git<cr>

"pretty print json with jq
nmap <SPACE>jq :%!jq .<cr>

"autocmd VimEnter * DBCompleteTables

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
" Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

let g:localvimrc_persistent = 1

nmap <SPACE>nu :set nu<cr>
nmap <SPACE>nnu :set nonu<cr>

" the directory that contains your phpunit test cases.
let g:phpunit_testroot = 'tests'

" the directory that contains source files
let g:phpunit_srcroot = 'src'

" the location of your phpunit file.
let g:phpunit_bin = 'phpunit'

"start config for xolox/session

"let g:session_autoload = 'no'
"let g:session_autosave = 'yes'
"let g:session_autosave_periodic = 5
"let g:session_autosave_silent = 1
"let g:session_default_to_last = 1
"set sessionoptions-=buffers
"set sessionoptions-=options
"nmap <SPACE>ess :CloseSession<cr>:q<cr>
"end config for xolox/session

"config for Plugin 'raimondi/delimitmate'
"включить отступы по нажатию на enter
"let delimitMate_expand_cr = 1

"включить отступы по нажатию на пробел. " |" превращается в " | "
"let delimitmate_expand_space = 1

" для html, необходимо дописать >:<, чтобы выставлялись правильные отступы
"au filetype vim,html let b:delimitmate_matchpairs = "(:),[:],{:},<:>,>:<"
"end config

"config for easytags
let g:easytags_file = './tags'
let g:easytags_auto_highlight = 0
let g:easytags_events = ['bufwritepost']
let g:easytags_async = 1
"end config

"configuration for php.vim
" Put at the very end of your .vimrc file.
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

"let g:molokai_original = 1
"let g:rehash256 = 1
"colorscheme molokai
colorscheme solas 

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

"au FileType go nmap <leader>gor <Plug>(go-run)

" vim-go settings
set autowrite 
au FileType go nmap <leader>gob :GoBuild<CR>
au FileType go nmap <leader>gor :GoRun<CR>
au FileType go nmap <leader>got :GoTest<CR>
au FileType go nmap <leader>gon :cnext<CR>
au FileType go nmap <leader>gom :cprevious<CR>
au FileType go nmap <leader>goa :cclose<CR>
let g:go_list_type = "quickfix"


"==========Start Coc-Snippets======================================
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

"==========Stop Coc-Snippets======================================


inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
