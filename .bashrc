parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\n$(tput setaf 25)\w $(parse_git_branch) $(tput setaf 124)\n--> $(tput sgr0)";
export PS1;

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad



# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
