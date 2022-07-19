set fish_greeting ""

if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

switch (uname)
#  case Darwin
#    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-wls2-linux.fish
end


# set default node version
set --universal nvm_default_version v16.16.0

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

# my alias
alias vim="nvim"
alias vi="nvim"
