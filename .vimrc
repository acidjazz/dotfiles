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

" nerdtree, ctrl+n
Plugin 'scrooloose/nerdtree'

" nerdtree git support
Plugin 'Xuyuanp/nerdtree-git-plugin'

" signify, shows added/modified/removed lines
Plugin 'mhinz/vim-signify'

" minimap
Plugin 'severin-lemaignan/vim-minimap'

" gruvbox colorscheme
Plugin 'morhetz/gruvbox'
Plugin 'ap/vim-css-color'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'
Plugin 'wavded/vim-stylus'
Plugin 'elzr/vim-json'
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

augroup CoffeeBufUpdate
  autocmd User CoffeeCompile,CoffeeRun exec bufwinnr(b:coffee_src_buf) 'wincmd w'
augroup END

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


augroup LiveScriptBufUpdate
  autocmd User LiveScriptCompile,LiveScriptWatch call s:RemoveGeneratedBy()
augroup END


au BufWritePost *.ls silent LiveScriptMake!

:map <C-X> :LiveScriptCompile watch vert <Enter> :setl scrollbind <Enter> <C-w> <C-w> :setl scrollbind

"" remove scrollbars
set guioptions-=r
set guioptions-=L

colorscheme gruvbox
set guifont=Hack:h18
"set guifont=Menlo:h18



" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
"let g:airline#extensions#tabline#enabled = 1


" nerdtree
map <C-n> :NERDTreeToggle<CR>
 

" signify
"let g:signify_sign_overwrite = 0
