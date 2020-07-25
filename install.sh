echo "Configuring igit.."
echo "pardir=./"> igit.config
echo "igitdir=~/igit" >> igit.config
echo "alias \"igit=~/igit/igit.sh\"" >> ~/.bash_profile || sed -i "" "s|${old}|${new}|g" ~/.bash_profileecho "alias \"igit=~/igit/igit.sh\"" >> ~/.bashrc
echo "Setting permitions.."
chmod 755 igit.config
chmod 755 igit.sh
chmod 755 ubrs.sh
chmod 755 unistall.sh
mv `pwd` ~/
echo SUCCESS!
