# my binaries
export PATH=$HOME/bin:$PATH

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"

# python
#export PATH=$HOME/Library/Python/2.7/bin:$PATH
export PATH=/usr/local/Cellar/python/3.7.4_1/bin:$PATH

# go
export GOPATH=$HOME/projects/go
export GOBIN=$GOPATH/bin
export PATH=$GOPATH:$PATH
export PATH=$GOBIN:$PATH

# gpg-agent
export GPG_TTY=$(tty)

export EDITOR=$(command -v vim)

alias goworkspace='cd $GOPATH/src/github.com/davidmontoyago'
alias gow=goworkspace

alias gop='cd $HOME/projects'

source ~/.bashrc
