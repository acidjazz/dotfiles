set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" general auto-completion
" cd .vim/bundle/YouCompleteMe; ./install.py --tern-completer
Plugin 'Valloric/YouCompleteMe'

" using lines to match and track indention
Plugin 'Yggdroot/indentLine'

" write { it writes }, write ' it adds another'
Plugin 'Raimondi/delimitMate'

" syntastic, see https://github.com/scrooloose/syntastic for recommended
" .vimrc additions
Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-fugitive'

" sweet status/tabline for vim 
" for powerline fonts remember to install em via
" https://github.com/powerline/fonts
" then make sure macvim is installed 
" brew install macvim --env-std --override-system-vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ctrlp, full path fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" easymotion, on-screen search clarity, just hit \\w and then type the chars
" of the word/part you want to hop to
Plugin 'easymotion/vim-easymotion'

" best markdown syntax
Plugin 'gabrielelana/vim-markdown'

" nerdtree, ctrl+n
Plugin 'scrooloose/nerdtree'
" nerdtree git support - shows git status of files/dirs
Plugin 'Xuyuanp/nerdtree-git-plugin'

" signify, shows added/modified/removed lines
Plugin 'mhinz/vim-signify'

" minimap
Plugin 'severin-lemaignan/vim-minimap'

" cursor crosshair!
Plugin 'bronson/vim-crosshairs'

" gruvbox colorscheme
Plugin 'morhetz/gruvbox'

" show hex/text color values in css/stylus/yaml/etc
Plugin 'ap/vim-css-color'

" coffeesript syntax and auto-compilation
Plugin 'kchmck/vim-coffee-script'

" jade syntax
Plugin 'digitaltoad/vim-jade'

" stylus syntax
Plugin 'wavded/vim-stylus'

" json syntax
Plugin 'elzr/vim-json'

" a ton of 256color colorschemes to browse
Plugin 'noah/vim256-color'

call vundle#end()            " required
filetype plugin indent on    " required

"call pathogen#infect()

set t_Co=256

set shiftwidth=2
set foldmethod=marker
set tabstop=2
set backspace=2
set expandtab
set hlsearch

set autoindent
set smartindent
set mouse=a
set ttymouse=xterm2

"if has('cmdline_info')
""  set ruler
""  set rulerformat=%30(%=\:c(%o)w%n%y%m%r%w\ %l,%c%V\ %P%)
""  set showcmd
"endif

"if has('statusline')
""  set laststatus=1
""  set statusline=%<%f\ %=\:c(%o)\b%n%y%m%r%w\ %l,%c%V\ %P
"endif
set laststatus=2

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

"" remove scrollbars
set guioptions-=r
set guioptions-=L

"colorscheme 256_asu1dark
"let g:seoul256_background = 233
" colorscheme kevinseoul
" colorscheme solarized
" colorscheme fu
" colorscheme solarized
" colorscheme strange
colorscheme gruvbox
set guifont=Hack:h18
"set guifont=Menlo:h18



" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1


" airline tweaks
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" nerdtree
map <C-n> :NERDTreeToggle<CR>

" signify
"let g:signify_sign_overwrite = 0
"

" easymotion - lest just do overwin since its crazy awesome
map <Leader> <Plug>(easymotion-prefix)
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map <Leader>l <Plug>(easymotion-overwin-line)
nmap <Leader>l <Plug>(easymotion-overwin-line)


" corsshair cursor config
set cursorline    " enable the horizontal line
set cursorcolumn  " enable the vertical line
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NONE
