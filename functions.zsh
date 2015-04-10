
test(){
	source ~/scripts/test.zsh
}
mkalias(){
	print "\nalias $1=\"$@[2,-1]\"" >> ~/scripts/aliases.zsh
}
mkscript(){
	pushd ~/scripts/
		eval 'touch ~/scripts/'$1'.zsh'
		eval 'chmod +x '$1'.zsh'
		mkalias $1 "source $1.zsh"
	popd
}
lsscripts(){
	pushd ~/scripts

		files=($(ls)/\*) #gets the list of files in the present working directory
		for file in $files; do
			print $file(:r)
		done

	popd
}