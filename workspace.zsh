pushd ~/rapid7/framework
	git checkout $1
	bundle -j4
popd

pushd ~/rapid7/pro
	git checkout $1
	bundle -j4
popd