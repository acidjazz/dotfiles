# acidjazz' dotfiles

* git-friendly command prompt showing branch
  * push status, dirty or clean status, time from last commit
* color coded directories and files
![](geometry.gif)
* folder/file/everything autocompleted
![](autocomplete.gif)

### VIM Installation

* Install [vim-plug](https://github.com/junegunn/vim-plug)
```bash
 curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
* Open vim, type :PlugInstall, to install all the vim plugins

![vim-plug](https://raw.githubusercontent.com/junegunn/i/master/vim-plug/installer.gif)

* Install the [Powerline-patched fonts](https://github.com/powerline/fonts)
  * I currently have the .vimrc pointed to [Robot Mono for Powerline](https://github.com/powerline/fonts/blob/master/RobotoMono/Roboto%20Mono%20for%20Powerline.ttf) [Here](https://github.com/acidjazz/dotfiles/blob/master/.vimrc#L143)


* Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

via curl
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

via wget
```shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```
  


### Examples

![](vim_example.png)
