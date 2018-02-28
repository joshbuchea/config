# Cobalt2 for iTerm2 and Zsh

- [Download repo archive](https://github.com/wesbos/Cobalt2-iterm/archive/master.zip) and extract
- Drop `cobalt2.zsh-theme` file in to the `~/.oh-my-zsh/themes/` directory.
- Open up your Zsh preferences at `~/.zshrc` and change the theme variable to `ZSH_THEME="cobalt2"`
- [Install PIP](https://pip.pypa.io/en/stable/installing/) with `get-pip.py`:
  - [Download get-pip.py](https://bootstrap.pypa.io/get-pip.py)
  - Install PIP: `sudo python get-pip.py` (Ok to install with OS Python 👍)
- Install Powerline with PIP: `pip install --user powerline-status`
- Install Powerline fonts:
  - `git clone https://github.com/powerline/fonts`
  - `cd fonts`
  - `./install.sh`
- Set fonts in iTerm2:
  - In iTerm2 access the *Profiles* tab in *Preferences*: `iTerm2 > Preferences > Profiles`
  - Create new profile: duplicate *Default* profile and give new profile a name
  - Set new profile as default profile
  - Under the *Colors* tab import the `cobalt2.itermcolors` file via the *Load Presets* drop-down.
  - Under the *Text* tab change the font for each type (*Regular* and *Non-ASCII*) to '**Inconsolata for Powerline**'
  - Under the *Text* tab set font size to `20`
  - Under the *Window* tab change *Columns* to `120` and *Rows* to `18`
- Refresh Zsh by typing `source ~/.zshrc` on the command line.

- https://github.com/wesbos/Cobalt2-iterm
