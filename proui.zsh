if (( $# == 0 ))
  then cd ~/rapid7/pro/ui
else
	pushd ~/rapid7/pro/ui
		git $@[1,-1]
	popd
fi

