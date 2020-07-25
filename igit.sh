
#!/bin/bash

. ~/igit/igit.config

case $1 in
set)
	new="`pwd`"
	sed -i "" "s|${new}|${"pardir="pardir}|g" ~/igit/igit.config
	printf "\npardir = %s\n\n" `pwd`
	;;
pardir)
	printf "\npadir = %s\n\n" $pardir
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
