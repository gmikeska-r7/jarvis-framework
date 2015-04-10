set -A GEMS "metasploit-concern" "metasploit-credential" "metasploit-yard" "metasploit_data_models" "metasploit-model"
for i in $GEMS
do

	pushd ~/rapid7/$i
		git pull
		bundle -j4
	popd

done

pushd ~/rapid7/framework 
git fetch --all 
git checkout master 
git pull upstream master
git push origin master
bundle -j4