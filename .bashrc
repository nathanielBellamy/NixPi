export PATH=/home/nate/.local/bin:$PATH

source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE='TRUE'
GIT_PS1_SHOWUNTRACKEDFILES='TRUE'
GIT_PS1_SHOWUPSTREAM='auto'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '


