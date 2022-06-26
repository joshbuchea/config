PROMPT=$'%{$FG[216]%}%c%{$reset_color%} $(git_prompt_info)\n'
PROMPT+="%(?:%{$fg_bold[green]%}👉 :%{$fg_bold[red]%}👉 )"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}%{$FG[176]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"

# ▶
# 216
# 180
