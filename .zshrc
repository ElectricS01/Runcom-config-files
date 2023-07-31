export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
PROMPT="%F{046}%n %1~ %# %f"
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=5000
setopt SHARE_HISTORY
autoload -U colors && colors
PS1="%F{46}%n%F{160}@%F{46}%m: %F{201}%(5~|%-1~/.../%2~|%2~) %{$reset_color%}%% %F{51}"

preexec () { echo -ne "\e[0m" }

alias sshs="ssh root@220.240.178.216"
alias server="ssh root@220.240.178.216"
alias vite="yarn dev"
alias f="yarn dev"
alias b="nodemon"
alias db="ssh -L 3306:127.0.0.1:3306 root@220.240.178.216"
alias u="yarn upgrade"
alias y="yarn"
alias vpn="./vpn"
alias v="./vpn"
alias vpns="./vpn-server"
alias mdb="mysql.server start"
alias gen="sequelize migration:generate --name"
alias mig="sequelize db:migrate"
alias sl="sudo pmset -a disablesleep"
alias t="sudo-touchid"
alias webstorm="open -na "WebStorm.app" --args"
alias smart="smartctl -a /dev/disk0"