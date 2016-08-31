# acidjazz' dotfiles

* git-friendly command prompt showing 
  * branch, push status, dirty or clean status, time from last commit
* color coded directories and files
* on-the-fly syntax highlighting as you type

![](geometry.gif)

* folder/file/everything autocompleted

![](autocomplete.gif)

## Installation

* Install [vim-plug](https://github.com/junegunn/vim-plug)
```bash
 curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
* Open vim, type :PlugInstall to get the latest of all the vim plugins

![vim-plug](https://raw.githubusercontent.com/junegunn/i/master/vim-plug/installer.gif)

* Install the [Powerline-patched fonts](https://github.com/powerline/fonts)
  * I currently have the .vimrc pointed to [Robot Mono for Powerline](https://github.com/powerline/fonts/blob/master/RobotoMono/Roboto%20Mono%20for%20Powerline.ttf) [Here](https://github.com/acidjazz/dotfiles/blob/master/.vimrc#L143)

* Install [LS_COLORS](https://github.com/trapd00r/LS_COLORS)
```shell
wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O $HOME/.dircolors
```

* Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

```shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

* Install [geometry](https://github.com/frmendes/geometry)
```shell
mkdir ~/.oh-my-zsh/custom/themes
wget https://raw.githubusercontent.com/frmendes/geometry/master/geometry.zsh -O $HOME/.oh-my-zsh/custom/themes/geometry.zsh-theme
```

* Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
 
## Configuration

 * Overwrite your current default `.vimrc` with the one in this repository
   * Review and customize to your preferences
 * Overwrite your current default `.zshrc` with the one in this repository
   * Review and customize to your preferences

## VIM Examples

### Standard look with all the plugins active

![](vim_example.png)

### Using the fuzzy finder [ctrlp](https://github.com/ctrlpvim/ctrlp.vim) to bring up a pug view, (ctrl+enter splits it in)

![](ctrlp.gif)

### Easymotion Overwin motion
* Type \ to initiate easywin
* 'f' for a search
* a letter in the word you are looking for
* then the letter presented (highlighted) 
* you are now anywhere in your file(s) w/in 4 keystrokes

![](https://raw.githubusercontent.com/haya14busa/i/2753bd4dd1dfdf5962dbdbffabf24244e4e14243/easymotion/overwin-motions.gif)


