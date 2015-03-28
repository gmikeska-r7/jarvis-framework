test(){
	source ~/scripts/test.zsh
}

mkScript(){
	eval 'touch ~/scripts/'$1'.zsh'
	eval 'chmod +x '$1'.zsh'
}