call plug#begin('~/.vim/plugged')

"       _             _
" _ __ | |_   _  __ _(_)_ __  ___
"| '_ \| | | | |/ _` | | '_ \/ __|
"| |_) | | |_| | (_| | | | | \__ \
"| .__/|_|\__,_|\__, |_|_| |_|___/
"|_|            |___/
" using vim-plug, installation:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" open vi, :PlugInstall


" general auto-completion
" cd .vim/plugged/YouCompleteMe; ./install.py
" off now because it barely works and takes all the cpu
" Plug 'Valloric/YouCompleteMe'

" use lines to match and track indention
" UPDATE: switched to indention guides instead, lines break a bunch of syntax
" highlighting
"Plug 'Yggdroot/indentLine'
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#222222 ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#333333 ctermbg=7

" lets get some proper html5 syntax
Plug 'othree/html5.vim'
 
" vue syntax, sure lets do it
Plug 'posva/vim-vue'
" let g:syntastic_html_tidy_ignore_errors = [ '<template> is not recognized!' ]

" vue syntastic syntax
Plug 'sekel/vim-vue-syntastic'

" syntastic, see https://github.com/scrooloose/syntastic for recommended
" .vimrc additions
Plug 'scrooloose/syntastic'

" vim git awesomeness
Plug 'tpope/vim-fugitive'

" tabular, line up text, ex:
" one = 1
" four = 4
" Execute either selected or w/in range: :Tab /=
" one  = 1
" four = 4
"
Plug 'godlygeek/tabular'

" best markdown syntax
Plug 'plasticboy/vim-markdown'

" sweet status/tabline for vim
" for powerline fonts remember to install em via
" https://github.com/powerline/fonts
" then make sure macvim is installed 
" with: brew install macvim --env-std --override-system-vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ctrlp, full path fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" easymotion, on-screen search clarity, just hit \w and then type the chars
" of the word/part you want to hop to, w = word, l = line, f = find 
Plug 'easymotion/vim-easymotion'


" nerdtree, ctrl+n
Plug 'scrooloose/nerdtree'
" nerdtree git support - shows git status of files/dirs
Plug 'Xuyuanp/nerdtree-git-plugin'

" gitgutter - (switcedh from signify cuz emojis, shows add/modified/removed
" lines in git
Plug 'airblade/vim-gitgutter'


" minimap - hilarious dots
Plug 'severin-lemaignan/vim-minimap'

" cursor crosshair!
" MAJOR LAG Plug 'bronson/vim-crosshairs'


" show hex/text color values in css/stylus/yaml/etc
Plug 'ap/vim-css-color'

" coffeesript syntax and auto-compilation
Plug 'kchmck/vim-coffee-script'

Plug 'pangloss/vim-javascript'

" jade syntax - being renamed to pug??? - dont forget to npm install -g
" jade-lint
"
Plug 'digitaltoad/vim-pug'


" https://github.com/dNitro/vim-pug-complete
" Vim omni-completion support for pug (formerly jade) template engine
" Hit <C-x><C-o> in insert mode everywhere you expect something to popup
Plug 'dNitro/vim-pug-complete'


" stylus syntax
Plug 'wavded/vim-stylus'

" sass/scss syntax
Plug 'cakebaker/scss-syntax.vim'


" json syntax
Plug 'elzr/vim-json'

" sweet themes
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-janah'
" a ton of 256color colorschemes to browse
Plug 'noah/vim256-color'

" blade syntax, why not
Plug 'jwalton512/vim-blade'


" https://github.com/joshdick/onedark.vim
" A dark Vim color scheme for the GUI and 16/256-color terminals, based on FlatColor, with colors inspired by the excellent One Dark syntax theme for the Atom text editor.
"
Plug 'joshdick/onedark.vim'


" vim emojis ofcourse, combined with git gutter we got emoji gutters
Plug 'junegunn/vim-emoji'

" les try youcompleteme

Plug 'Valloric/YouCompleteMe'

" finally doing some typescript
" Plug 'leafgarland/typescript-vim'
Plug 'leafgarland/typescript-vim'

" Dart support!
Plug 'dart-lang/dart-vim-plugin'

" Let's get some tempaltes going
Plug 'aperezdc/vim-template'
 

call plug#end()

filetype plugin indent on

set t_Co=256

set foldmethod=marker
set shiftwidth=2
set tabstop=2
set softtabstop=2
set laststatus=2
set expandtab
set hlsearch
"set backspace=2
set backspace=indent,eol,start

" set autoindent
" set smartindent
set mouse=a
set ttymouse=xterm2


syntax enable

:map <C-C> :CoffeeWatch vert <Enter> :setl scrollbind <Enter> <C-w> <C-w> :setl scrollbind

function! s:RemoveGeneratedBy()
  " If there was an error compiling, there's no comment to remove.
  if v:shell_error
    return
  endif

  " Save cursor position.
  let pos = getpos('.')

  " Remove first line.
  set modifiable
  1 delete _
  set nomodifiable

  " Restore cursor position.
  call setpos('.', pos)
endfunction

augroup CoffeeBufUpdate
  autocmd User CoffeeCompile,CoffeeWatch call s:RemoveGeneratedBy()
augroup END

" remove scrollbars
set guioptions-=r
set guioptions-=L

"colorscheme gruvbox
"colorscheme fu
colorscheme onedark
set guifont=Roboto\ Mono\ for\ Powerline:h18


" airline tweaks
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#whitespace#checks = [ 'indent', 'mixed-indent-file' ]

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntastic tweaks
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ug linting
" let g:syntastic_jade_checkers = ['jade_lint']
let g:syntastic_pug_checkers = ['pug_lint']
let g:syntastic_html_checkers = []
let g:syntastic_vue_checkers = ['html/jshint']
let g:syntastic_python_checkers = []

" Available checkers: html/jshint html/tidy html/validator html/w3 javascript/jshint

" config file for coffeelinting
let g:syntastic_coffee_coffeelint_args = "--file ~/.coffeelint.json"
let g:syntastic_javascript_checkers = ['jshint']

" trying this for vue
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
    let g:syntastic_vue_eslint_exec = local_eslint
endif

" proper sass linter, npm install -g sass-lint
let g:syntastic_scss_checkers      = [ 'sass_lint' ]
let g:syntastic_sass_sass_args     = '-I ' . getcwd()


" nerdtree
map <C-n> :NERDTreeToggle<CR>

" easymotion - lest just do overwin since its crazy awesome
map <Leader> <Plug>(easymotion-prefix)
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map <Leader>l <Plug>(easymotion-overwin-line)
nmap <Leader>l <Plug>(easymotion-overwin-line)


" ctrlp ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png,*.gif,*.mp4
set wildignore+=node_modules/**,vendor/**
" nativescript
set wildignore+=hooks/**,platforms/**
let g:ctrlp_custom_ignore = {
  \ 'dir': 'node_modules$\|\.git$\|vendor$\|storage$',
  \ 'file': '\.DS_Store'
  \ }

" background
set background=dark

" crosshair cursor config
"set cursorline    " enable the horizontal line
"set cursorcolumn  " enable the vertical line
"highlight CursorLine term=underline ctermbg=237 guibg=#000000
"highlight CursorColumn term=underline ctermbg=237 guibg=#000000
"highlight Cursor guifg=white guibg=black
"highlight iCursor guifg=white guibg=steelblue

"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10


" git emojis for got gutter w/ vim-emoji
"
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd FileType typescript :set makeprg=tsc
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow



" git emoji comppletion
"

"let g:ycm_semantic_triggers = {'text': [":"]}
"set completefunc=emoji#complete
"set omnifunc=emoji#complete
"
autocmd FileType vue syntax sync fromstart
"
"function! StylusFold()
"    setl foldmethod=indent
"    setl foldlevelstart=1
"    setl foldnestmax=2
"    setl foldminlines=5
"    setl fen
"endfunction
"au FileType stylus call StylusFold()
"
" set indentkeys-={,}
" setlocal indentkeys=o,O,*<Return>,},],0),!^F
"set nosmartindent
"set cindent
"filetype plugin indent on
"set cinkeys-=0#
"set indentkeys-=0#
"autocmd FileType * set cindent "some file types override it

