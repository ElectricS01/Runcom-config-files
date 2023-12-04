export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
PROMPT="%F{046}%n %1~ %# %f"
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=50000
setopt SHARE_HISTORY
autoload -U colors && colors
PS1="%F{46}%n%F{160}@%F{46}%m: %F{201}%(5~|%-1~/.../%2~|%2~) %{$reset_color%}%% %F{51}"

preexec () { echo -ne "\e[0m" }

alias sshs="ssh root@220.240.178.216"
alias server="ssh root@220.240.178.216"
alias f="yarn dev"
alias u="yarn upgrade"
alias y="yarn"
alias i="npm i"
alias l="yarn lint"
alias b="nodemon"
alias db="ssh -L 3306:127.0.0.1:3306 root@220.240.178.216"
alias vpn="./vpn"
alias v="./vpn-new"
alias vpns="./vpn-server"
alias mdb="mysql.server start"
alias gen="sequelize migration:generate --name"
alias mig="sequelize db:migrate"
alias sl="sudo pmset -a disablesleep"
alias t="sudo-touchid"
alias webstorm="open -na "WebStorm.app" --args"
alias smart="smartctl -a /dev/disk0"
alias pwr="sudo powermetrics -i 2000 --samplers cpu_power -a --hide-cpu-duty-cycle"
alias nr="npm run"
alias in="brew install"
alias bu="brew upgrade"