export PATH="/usr/local/opt/node@20/bin:$PATH"
eval "$(zoxide init zsh)"
PROMPT="%F{046}%n %1~ %# %f"
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=50000

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

setopt SHARE_HISTORY
autoload -U colors && colors
PS1="%F{46}%n%F{160}@%F{46}%m: %F{201}%(5~|%-1~/.../%2~|%2~) %{$reset_color%}%% %F{51}"

preexec () { echo -ne "\e[0m" }

alias sshs="ssh root@220.240.178.216"
alias server="ssh root@220.240.178.216"
alias db="ssh -L 3306:127.0.0.1:3306 root@220.240.178.216"

alias f="bun dev"
alias b="bun prod"
alias u="bun update"
alias m="bun install"
alias l="bun lint"
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

alias v="~/vpn"
alias vv="~/vpn-v"
alias vo="~/vpn-old-old"
alias vpn="~/vpn-new"
alias vpne="~/vpn-e"
alias vpns="~/vpn-server"

alias mdb="mysql.server start"
alias gen="bun sequelize migration:generate --name"
alias mig="bun sequelize db:migrate"

alias sl="sudo pmset -a disablesleep"
alias t="sudo-touchid"
alias smart="smartctl -a /dev/disk0"
alias pwr="sudo powermetrics -i 2000 --samplers cpu_power -a --hide-cpu-duty-cycle"
alias ag="./apollo-ios-cli generate"

alias webstorm="open -na "WebStorm.app" --args"

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"
