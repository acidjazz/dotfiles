set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
" cd .vim/bundle/YouCompleteMe; ./install.py --tern-completer
Plugin 'Yggdroot/indentLine'


Plugin 'Raimondi/delimitMate'

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

if has('cmdline_info')
  set ruler
  set rulerformat=%30(%=\:c(%o)w%n%y%m%r%w\ %l,%c%V\ %P%)
  set showcmd
endif

if has('statusline')
  set laststatus=1
  set statusline=%<%f\ %=\:c(%o)\b%n%y%m%r%w\ %l,%c%V\ %P
endif

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
set guifont=Menlo:h18
