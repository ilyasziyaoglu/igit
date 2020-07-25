new=""
old="alias \"igit=~/igit/igit.sh\""
sed -i "" "s|${old}|${new}|g" ~/.bash_profile || sed -i "" "s|${old}|${new}|g" ~/.bashrc
rm -rf ~/igit
echo "igit uninstalled!"
