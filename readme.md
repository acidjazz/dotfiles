# acidjazz' dotfiles

* git-friendly command prompt showing branch
  * push status, dirty or clean status, time from last commit
* color coded directories and files
![](geometry.gif)
* folder/file/everything autocompleted
![](autocomplete.gif)

### Packages Included / installation

* Install [vim-plug](https://github.com/junegunn/vim-plug)
```bash
 curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

* (Optional) Install the [Powerline-patched fonts](https://github.com/powerline/fonts), I currently have the .vimrc pointed to [Robot Mono for Powerline](https://github.com/powerline/fonts/blob/master/RobotoMono/Roboto%20Mono%20for%20Powerline.ttf) [Here](https://github.com/acidjazz/dotfiles/blob/master/.vimrc#L143)

* Open vim, type :PlugInstall, like so


![vim-plug](https://raw.githubusercontent.com/junegunn/i/master/vim-plug/installer.gif)


### Examples

![shell prompt](/prompt.png)


![terminal prompt](/terminal.png)
