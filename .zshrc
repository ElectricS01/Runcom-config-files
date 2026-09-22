export PATH="/opt/homebrew/opt/node/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH_TO_FX=/opt/javafx-sdk-21.0.8
export TEMP="${TMPDIR:-/tmp}"
eval "$(zoxide init zsh)"
PROMPT="%F{046}%n %1~ %# %f"
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=50000

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

setopt SHARE_HISTORY
setopt HIST_SAVE_NO_DUPS
autoload -U colors && colors
PS1="%F{46}%n%F{160}@%F{46}%m: %F{201}%(5~|%-1~/.../%2~|%2~) %{$reset_color%}%% %F{51}"

preexec () { echo -ne "\e[0m" }

alias zd="vim ~/.zshrc"

alias sshs="ssh"
alias server="ssh"
alias db="ssh -L 3306:127.0.0.1:3306"
alias aw="~/aws2"
alias or="~/or"

alias f="bun dev"
alias b="bun prod"
alias bl="bun run build"
alias o="bun preview"
alias u="bun update"
alias m="bun install"
alias l="bun lint"
alias tc="bun typecheck"
alias to="bun test-only"
alias ygen="bun install -y"

alias y="yarn"
alias yu="yarn upgrade"

alias in="brew install"
alias bu="brew upgrade"

alias p="prettier ./src --write"
alias pb="prettier ./ --write"

alias i="npm i"
alias nr="npm run"

alias q="cargo run"
alias a="cargo new"
alias s="cargo add"
alias e="vim src/main.rs"

alias g="clang -o program main.c && ./program"
alias d="vim main.c"
alias vm="vim"

alias v="~/vpn"
alias vv="~/vpn-v"
alias vo="~/vpn-o"
alias vpn="~/vpn-new"
alias vpne="~/vpn-e"
alias vpns="~/vpn-server"

alias mdb="mysql.server start"
alias gen="bun sequelize migration:generate --name"
alias mig="bun sequelize db:migrate"

alias sl="sudo pmset -a disablesleep"
alias gp="~/toggle-globalprotect-background"
alias t="sudo-touchid"
alias smart="smartctl -a /dev/disk0"
alias pwr="sudo powermetrics -i 2000 --samplers cpu_power -a --hide-cpu-duty-cycle"
alias ag="./apollo-ios-cli generate"
alias ct="ccat"

alias webstorm="open -na "WebStorm.app" --args"
alias rdr="open -na "Rider.app" --args"
alias int="open -na \"IntelliJ IDEA.app\" --args"

alias m1n1='make clean && make && cp ~/Github/m1n1/build/m1n1.bin "/Volumes/w/"'

alias c="copilot"
alias cr="copilot --resume"
alias x="claude"

alias dr="dotnet run"
alias drr="dotnet run -p:RunAnalyzers=false"
alias dn="dotnet build -r osx-arm64 --nologo -p:RunAnalyzers=false"
alias dbb="dotnet build -r osx-arm64 --no-restore --nologo -p:RunAnalyzers=false"
alias us="dotnet user-secrets list"
alias uss="dotnet user-secrets set"
alias ef="dotnet ef migrations add"
alias edi="git update-index --skip-worktree .editorconfig"

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

alias python=python3
alias pip=pip3

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
