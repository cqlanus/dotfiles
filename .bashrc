echo -n "Uptime: "; uptime
echo ""

MYNAME='Chris Lanus'
export MYNAME

export LESS='-M'
export PATH="/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/mysql/bin"

export HISTSIZE=10000                      # 500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p '    # using strftime format
export HISTCONTROL=ignoreboth              # ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll:l"

export PS1="\W $ "

alias l='ls -lhG'
alias ll='ls -lahG'
alias home='cd ~'
alias up='cd ..'
alias h='history'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gpsh='git push'

#can also redefine a command to add options
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -p'

#can be used to fix common typos you make
alias pdw='pwd'
alias alais='alias'

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

export CLICOLOR=1

alias cdf='cd ~/fullstack'
alias cdc='cd ~/Documents/Code/'
alias cds='cd ~/Sites'
alias vim='mvim -v'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dotstatus='dotfiles status -uno'
