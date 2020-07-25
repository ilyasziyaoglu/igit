echo "Configuring igit.."
echo "pardir=./"> igit.config
echo "igitdir=~/igit" >> igit.config
echo "alias \"igit=~/igit/igit.sh\"" >> ~/.bash_profile
echo "Setting permitions.."
chmod 755 igit.config
chmod 755 igit.sh
chmod 755 ubrs.sh
mv `pwd` ~/
echo SUCCESS!
