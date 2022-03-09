# decoration="%F{red}❱%F{magenta}❱%F{cyan}❱%f"
decoration="%F{red}%F{magenta}%F{cyan}%f"

PROMPT="%(?:%{$fg_bold[green]%} :%{$fg_bold[red]%} )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $decoration $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

function real_time() {
    local color="%{$fg_no_bold[cyan]%}";                    # color in PROMPT need format in %{XXX%} which is not same with echo
    local time="[$(date +%H:%M:%S)]";
    # local time="%t";
    local color_reset="%{$reset_color%}";
    echo "${color}${time}${color_reset}";
}
RPROMPT='$(real_time)'

