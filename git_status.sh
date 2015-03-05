#! /bin/sh
for dirlist in `ls -l | awk '$1 ~ /d/ {print $10 }' `
do
	cd $dirlist

	if [ -e "./.git" ]; then
		GIT_STATUS=`git status -sb`
		if [ "${GIT_STATUS}" != "## master" ] ; then
			pwd
			git status -sb
		fi
	fi
	cd ../ > /dev/null
done

