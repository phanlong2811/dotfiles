export ZSH="/home/phanlong2811/.oh-my-zsh"
export EDITOR=nvim
ZSH_THEME="ghost"
plugins=(
    fzf
    git
    zsh-autosuggestions
    fast-syntax-highlighting
    npm
)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env

bindkey '^I' autosuggest-accept
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_USE_ASYNC=true
zle_bracketed_paste=()

export UPDATE_ZSH_DAYS=7
export FZF_DEFAULT_OPTS='
  --color fg+:2,bg+:-1,hl+:2
  --color info:5,prompt:2,spinner:3,pointer:1,marker:2'

alias ls="logo-ls"
export TERM=xterm-256color

alias luamake=/home/phanlong2811/lua-language-server/3rd/luamake/luamake

__conda_setup="$('/home/phanlong2811/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/phanlong2811/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/phanlong2811/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/phanlong2811/anaconda3/bin:$PATH"
    fi
fi
conda deactivate
