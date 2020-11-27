function ruby_prompt_info() {
  echo $(rvm_prompt_info || rbenv_prompt_info || chruby_prompt_info)
}

ZSH_THEME_RUBY_PROMPT_PREFIX=[
ZSH_THEME_RUBY_PROMPT_SUFFIX=]

PROMPT=$'%{$limegreen%}%~${PR_RST} $vcs_info_msg_0_$(virtualenv_info)$ '
RPROMPT='%F{blue}$(ruby_prompt_info)%{$fg[green]%}[%*]%{$reset_color%}$(battery_pct_prompt)'

