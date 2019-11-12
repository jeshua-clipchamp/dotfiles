# ~/.zsh/themes/jeshua.zsh-theme

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'
local rvm_ruby=''
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local git_branch='$(git_prompt_info)%{$reset_color%}'

# local time, color coded by last return code
time_enabled="%(?.%{$fg[green]%}.%{$fg[red]%})[%D{%Y-%m-%d %H:%M:%S}]%{$reset_color%}"
time_disabled="%{$fg[green]%}[%D{%Y-%m-%d %H:%M:%S}]%{$reset_color%}"
time=$time_enabled

local virtualenv='%{$fg[magenta]%}$(virtualenv_prompt_info)%{$reset_color%}'

PROMPT="╭─${time} ${user_host} ${current_dir} ${virtualenv} ${rvm_ruby} ${git_branch}
╰─%B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
