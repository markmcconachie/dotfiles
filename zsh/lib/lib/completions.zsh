# Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH/cache/


zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:*:*:*:*' menu select

# Load and run compinit
autoload -U compinit
compinit -i

# use /etc/hosts and known_hosts for hostname completion
[ -r /etc/ssh/ssh_known_hosts ] && _global_ssh_hosts=(${${${${(f)"$(</etc/ssh/ssh_known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _global_ssh_hosts=()
[ -r ~/.ssh/known_hosts ] && _ssh_hosts=(${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _ssh_hosts=()
[ -r /etc/hosts ] && : ${(A)_etc_hosts:=${(s: :)${(ps:\t:)${${(f)~~"$(</etc/hosts)"}%%\#*}##[:blank:]#[^[:blank:]]#}}} || _etc_hosts=()
hosts=(
  "$_global_ssh_hosts[@]"
  "$_ssh_hosts[@]"
  "$_etc_hosts[@]"
  "$HOST"
  localhost
)
zstyle ':completion:*:hosts' hosts $hosts
