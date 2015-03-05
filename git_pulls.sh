#! /bin/sh
for dirlist in `ls -l | awk '$1 ~ /d/ {print $10 }' `
do
	#echo $dirlist
	cd $dirlist
	pwd

	if [ -e "./.git" ]; then
			git checkout master
			git pull origin master
	fi
	echo
	cd ../ > /dev/null
done

