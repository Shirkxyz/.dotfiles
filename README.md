![GitHub last commit](https://img.shields.io/github/last-commit/shirkxyz/.dotfiles)
![GitHub top language](https://img.shields.io/github/languages/top/shirkxyz/.dotfiles)

# Dependencies

- [linux](https://www.archlinux.org) or [macOS](https://www.apple.com/macos)
- [homebrew](https://brew.sh/)
- [kitty (brew)]() or (if not using hyprland)

  ```shell
    sudo pacman -S kitty
  ```

- [git (brew)](https://formulae.brew.sh/formula/git#default) or

  ```shell
    sudo pacman -S git
  ```
  
- [neovim (brew)](https://formulae.brew.sh/formula/neovim)
- [lazyvim](https://github.com/LazyVim/LazyVim)
- [fish (brew)](https://formulae.brew.sh/formula/fish)
  - [fisher](https://github.com/jorgebucaran/fisher)
  - [tide](https://github.com/IlanCosman/tide)
  - [Z](https://github.com/jethrokuan/z)

## Fonts

Needed for Fisher

- [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
- [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
- [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
- [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

Needed for Waybar:

```shell
  sudo pacman -S ttf-jetbrains-mono-nerd
```

## Helpful brews

- [lua](https://formulae.brew.sh/formula/lua)
- [eza](https://formulae.brew.sh/formula/eza)
- [peco](https://formulae.brew.sh/formula/peco)
- [fastfetch](https://formulae.brew.sh/formula/fastfetch)
- [imagemagick](https://formulae.brew.sh/formula/imagemagick)

# Install

Theses configs are for my development needs.
> One who makes no mistakes, makes nothing at all.

**USE AT YOUR OWN RISK!**

```shell
  cd Downloads
  git clone https://github.com/Shirkxyz/.dotfiles.git
  cd .dotfiles
  sudo rm -Rf .git
```
  
**HINT:**

Only move the files you need from the downloaded .dotfiles/.config.

Brew installs create some of these files by default, so only overwrite what you deem necessary in your .config directory.

```shell
  // Copy Example
  cp kitty.conf ~/.config/kitty

  // Move Example
  mv kitty ~/.config 
```
