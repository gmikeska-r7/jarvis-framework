test(){
	source ~/scripts/test.zsh
}
mkalias(){
	print "\nalias $1=\"$@[2,-1]\"" >> $FRAMEWORK_ROOT/aliases.zsh
}
mkscript(){
	pushd ~/scripts/
		eval 'touch ~/scripts/'$1'.zsh'
		eval 'chmod +x '$1'.zsh'
		mkalias $1 "source $1.zsh"
	popd
}
lsscripts(){
	pushd $FRAMEWORK_ROOT

		files=($(ls)/\*) #gets the list of files in the present working directory
		for file in $files; do
			print $file(:r)
		done

	popd
}
function markdown() {
  pandoc -s -f markdown -t man $@ | groff -T utf8 -man | less
}
runrepo(){
	WAS=$PWD
	if (( $# == 1 ))
	  then cd $1
	else
		pushd $1
			git $@[2,-1]

		if [[ $WAS != $PWD ]]
			then popd
		fi
	fi
}

msfup()
{
	if [[ $1 = "all" ]]; then
		set -A GEMS "metasploit-concern" "metasploit-credential" "metasploit-yard" "metasploit_data_models" "metasploit-model"
		for i in $GEMS
		do

			pushd ~/rapid7/$i
				git pull
				bundle
			popd

		done
	fi

	pushd ~/rapid7/framework
	git fetch --all
	git pull upstream
	git push origin
	bundle

	popd
}

branch()
{

	branches=("${(@f)$(git branch -a)}")
	start_branch="$(current_branch)"
	for branch in $branches; do
		branch=${branch// /}
		branch=${branch/\*/ }
		branch=${branch// /}
		if [[ $branch = $1 ]]
			then git checkout $branch
		fi
	done

	if [[ $start_branch = $(current_branch) ]] && [[ $start_branch != $1 ]]
		then git checkout -b $1
		git push -set-upstream origin $1
	fi
}

repo(){
	COMMAND=$1
	#DIR= pwd
	print "$1 $PWD"  >> $FRAMEWORK_ROOT/repos.dat
}
