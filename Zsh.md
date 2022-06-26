# Zsh

## Install & Configure Oh My Zsh

- [Install](https://ohmyz.sh/#install): `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Copy custom theme: `cp ~/projects/personal/config/oh-my-zsh/joshbuchea.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/`
- Install custom plugins:
  - `zsh-autosuggestions`: `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
  - `zsh-syntax-highlighting`: `git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/`
- Update plugins in `~/.zshrc`: `plugins(git)` --> `plugins(git z zsh-autosuggestions zsh-syntax-highlighting)`
