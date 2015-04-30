

# Simple shell scripting framework.
# Made by Greg Mikeska for Rapi7 Metasploit Pro team.
FRAMEWORK_ROOT=${0%/*}
PATH=$PATH:$FRAMEWORK_ROOT
source $FRAMEWORK_ROOT'/config.zsh'
source $ALIAS_PATH
source $FUNCTION_PATH
catimg $ICON
repofile=$FRAMEWORK_ROOT/repos.dat

while read i
do
  b=(${(s: :)i})

alias $b[1]="runrepo $b[2]"
done < $repofile
