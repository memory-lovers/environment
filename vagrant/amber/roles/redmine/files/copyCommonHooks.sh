#!/bin/sh

if [ -n "$1" ]; then
	cp /etc/subversion/hooks/* "$1/hooks/."
	echo 'Finish'
else
	echo 'Error parameter. (copyCommonHooks.sh repository_name)'
fi
