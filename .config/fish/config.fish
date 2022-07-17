if status is-interactive
    # Commands to run in interactive sessions can go here
end

switch (uname)
#  case Darwin
#    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    source (dirname (status --current-filename))/config-wls2-linux.fish
end

# set default node version
set --universal nvm_default_version v16.16.0


# my alias
alias vim="nvim"
alias vi="nvim"
