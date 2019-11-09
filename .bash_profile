# my binaries
export PATH=$HOME/bin:$PATH

#java
export JAVA_HOME=$(/usr/libexec/java_home)

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"

# python
#export PATH=$HOME/Library/Python/2.7/bin:$PATH
export PATH=/usr/local/Cellar/python/3.7.4_1/bin:$PATH

# go
export GOPATH=$HOME/projects/go
export PATH=$GOPATH/bin:$PATH
alias goworkspace='cd $GOPATH/src/github.com/davidmontoyago'
alias gow=goworkspace

source ~/.bashrc
