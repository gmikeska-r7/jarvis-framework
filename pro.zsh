if (( $# == 0 ))
  then cd ~/rapid7/pro
else
	pushd ~/rapid7/pro/
		git $@[1,-1]
	popd
fi

