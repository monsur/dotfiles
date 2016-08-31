# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTFILESIZE=1000000
HISTSIZE=1000000

# By default, Bash only records a session to the .bash_history file on disk when
# the session terminates. This means that if you crash or your session
# terminates improperly, you lose the history up to that point. You can fix this
# by recording each line of history as you issue it, through the $PROMPT_COMMAND
# variable
PROMPT_COMMAND='history -a'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
else
  # Otherwise we are probably on a Mac so CLICOLOR does the same.
  export CLICOLOR=YES
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Set the prompt
if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

# Load the PATH updates from a separate file
if [ -f ~/.bash_path ]; then
    . ~/.bash_path
fi

