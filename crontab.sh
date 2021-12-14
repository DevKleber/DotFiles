crontab -l > crontab_new 
sudo crontab -l > crontab_new_sudo

echo "@reboot /home/$USER/shellscripts/git/git.sh" >> crontab_new
echo "0 */2 * * * /home/$USER/shellscripts/git/git.sh" >> crontab_new
echo "0 */8 * * * /home/$USER/shellscripts/pc-.zshrc/run.sh" >> crontab_new
crontab crontab_new

echo "00 20 * * * /home/$USER/atalhos/atualiza_otimiza.sh >> /var/log/atualiza_otimiza.log 2>&1" >> crontab_new_sudo
sudo crontab crontab_new_sudo

rm crontab_new
rm crontab_new_sudo