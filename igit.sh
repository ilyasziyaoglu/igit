
#!/bin/bash

. ~/igit/igit.config

case $1 in
set)
	new="pardir=`pwd`"
	old="pardir=${pardir}"
	sed -i "" "s|${old}|${new}|g" ~/igit/igit.config
	printf "%s\n" $new
	;;
pardir)
	echo $pardir
	;;
uninstall)
	~/igit/uninstall.sh
	;;
lib)
	python3 ~/igit/libversions.py
	;;
ms)
	python3 ~/igit/msversions.py
	;;
ubrs)
	~/igit/ubrs.sh $pardir | sort | uniq
	;;
*)
 	cmd="$(cat $igitdir/$1) $2 $3 $4 $5 $6"
	cd $pardir
	for repo in `echo */`
	do
	  cd $repo
	  echo "$repo `seq  -f "-" -s '' $((30 - ${#repo}))`> `eval $cmd`"
	  cd $pardir
	done
	;;
esac
