if (( $# == 0 ))
  then cd ~/rapid7/framework
else
	pushd ~/rapid7/framework/
		git $@[1,-1]
	popd
fi

