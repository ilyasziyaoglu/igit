cd $1
for repo in `echo */`
do
  cd $repo
  git branch
  cd $1
done
