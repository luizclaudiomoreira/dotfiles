# Utils
alias c="clear"
alias ae="vim ~/.dotfiles/scripts/aliases.zsh"
alias ar="source ~/.dotfiles/scripts/aliases.zsh"
alias df="df -h"
alias ls="ls -Glh"
alias ll="ls -la"
alias t="tmux"
alias v="vagrant"

# Rails / Rake / Spring
alias rk="rake"
alias ra="rails"
alias sp="clear && rspec --format=documentation"
alias sra="spring rails"
alias spr="spring"
alias sps="clear && spring stop && ps -ax | grep spring"
alias srk="spring rake"
alias ssp="clear && spring rspec --format=documentation"
alias rub="rubocop"
alias sdbreset="spring rails db:drop && spring rails db:create && spring rails db:migrate"
alias sdbreset_test="RAILS_ENV=test spring rails db:drop RAILS_ENV=test && RAILS_ENV=test spring rails db:create RAILS_ENV=test && RAILS_ENV=test spring rails db:migrate RAILS_ENV=test"
