function asdf_prompt_info() {
  local rb_version
  local ex_version
  rb_version="`asdf current ruby | sed -e "s/(set.*$//" | sed -e "s/#//"`"
  ex_version="`asdf current elixir | sed -e "s/(set.*$//" | sed -e "s/#//"`"
  rb_version="ruby-$(sed -e 's/[[:space:]]*$//' <<<${rb_version})"
  ex_version="elixir-$(sed -e 's/[[:space:]]*$//' <<<${ex_version})"
  echo "${ZSH_THEME_RUBY_PROMPT_PREFIX}${rb_version}${ZSH_THEME_RUBY_PROMPT_SUFFIX}${ZSH_THEME_RUBY_PROMPT_PREFIX}${ex_version}${ZSH_THEME_RUBY_PROMPT_SUFFIX}"
}

function ruby_prompt_info() {
  echo $(asdf_prompt_info || rvm_prompt_info || rbenv_prompt_info || chruby_prompt_info)
}

ZSH_THEME_RUBY_PROMPT_PREFIX=[
ZSH_THEME_RUBY_PROMPT_SUFFIX=]

PROMPT=$'%{$limegreen%}%~${PR_RST} $vcs_info_msg_0_$(virtualenv_info)$ '
RPROMPT='%F{blue}$(ruby_prompt_info)%{$fg[green]%}[%*]%{$reset_color%}$(battery_pct_prompt)'

