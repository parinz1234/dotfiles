set fish_greeting ""

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
# alias vim="nvim"
# alias vi="nvim"

# golang
# export GOROOT=~/sdk/go
set -x GOROOT ~/sdk/go

# symbolic link example
# ln -s ~/Desktop/Config/golang/1.19/go ~/sdk/go

# export GOPATH=~/go
set -x GOPATH ~/go

# export GOBIN=$GOPATH/bin
set -x GOBIN $GOPATH/bin

# export PATH=$PATH:$GOROOT/bin:$GOBIN
fish_add_path $GOROOT/bin
fish_add_path $GOBIN
