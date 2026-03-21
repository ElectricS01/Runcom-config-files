# Mac Config Files & Commands

Commands, My Zsh config, and other rc(runcom) config files

### Install Homebrew

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Import terminal

- BetterTerminal.terminal

### Install Apps

```zsh
brew install microsoft-word microsoft-powerpoint microsoft-excel ungoogled-chromium zed@preview whisky
```

### Install Utilities

```zsh
brew install middleclick artginzburg/tap/sudo-touchid
```

### Install Command Line Tools

```zsh
brew install zoxide jq oven-sh/bun/bun
```

### Show hidden files by default
```zsh
defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder
```

### `~/`

- .zshrc
- .vimrc
- .gitconfig

### `~/library/LaunchAgents/`

- com.local.KeyRemapping.plist

### `~/.config/zed/`

- settings.json
