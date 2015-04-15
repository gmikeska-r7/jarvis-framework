
alias g="git"
alias gp="git push"
alias gpull="git pull"
alias gf="git fetch"
alias gc="git checkout"
alias gs="git status"
alias gadd="git add -p"
alias gr="git remote"
alias workspace="source workspace.zsh"
alias framework="source framework.zsh"
alias pro="source pro.zsh"
alias msfup="source msfup.zsh"
# Prevent sleep, ctrl+c to exit:
alias stayawake="pmset noidle"
# Stashery
alias gsl="git stash list"
alias gsa="git stash apply"

alias proui="source proui.zsh"

alias gcom="source gcom.zsh"

alias gsig="source gsig.zsh"
alias rubymine_prosvc="proe && rvmsudo rdebug-ide --port 1234 --dispatcher-port 26162 -- ./prosvc.rb -E development"
alias rubymine_prosvc_test="proe && rvmsudo rdebug-ide --port 1234 --dispatcher-port 26162 -- ./prosvc.rb -E test"
alias wifioff="networksetup -setairportpower airport off"
alias wifion="networksetup -setairportpower airport on"
alias 4man="proui && foreman start"
