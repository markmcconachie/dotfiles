fpath=($fpath $HOME/.zsh/func)
autoload -U commandExists

if commandExists mvim; then
  alias vim="mvim -v" #use macvim instead of vim
fi

# Aliases {
  # vim muscle muscle memory commands {
    alias :q="exit"
    alias :e="vim"
  # }
# }
