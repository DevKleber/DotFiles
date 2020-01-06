#!/usr/bin/env bash
# ----------------------------- VARIÁVEIS ----------------------------- #

## Date 17/11/2019
## Kleber 
## @klebimsc github/devkleber

##URL_VSCODE="https://az764295.vo.msecnd.net/stable/8795a9889db74563ddd43eb0a897a2384129a619/code_1.40.1-1573664190_amd64.deb"
URL_VSCODE="https://go.microsoft.com/fwlink/?LinkID=760868"
URL_SLACK="https://downloads.slack-edge.com/linux_releases/slack-desktop-4.2.0-amd64.deb"
URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
URL_DBEAVER="https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb"

##themes
URL_THEMES="https://dllb2.pling.com/api/files/download/id/1573862517/s/51692e834285c0401b49f47239ea7e2dfe280ff98c5b93c1c17deab424afbaa8ddfadeaeb93a31e19f8e986010b0025ca4105e16b24b9ffd80fae59de9f27baf/t/1574028601/c/51692e834285c0401b49f47239ea7e2dfe280ff98c5b93c1c17deab424afbaa8ddfadeaeb93a31e19f8e986010b0025ca4105e16b24b9ffd80fae59de9f27baf/lt/download/Mojave-dark-20191116000126.tar.xz"
URL_THEMES_ICONS="https://dllb2.pling.com/api/files/download/id/1573028451/s/7a4c980e09cdad82e1b69c57eed9fa09a34b438547e8c8af86b1807b0eda619e34f49fadc7ec24b88e9b9930f90892071384fab4e6f95a8b74c200044262b166/t/1574029056/c/51692e834285c0401b49f47239ea7e2dfe280ff98c5b93c1c17deab424afbaa8ddfadeaeb93a31e19f8e986010b0025ca4105e16b24b9ffd80fae59de9f27baf/lt/download/01-McMojave-circle-20191106080606.tar.xz"
URL_THEMES_ICONS_2="https://dllb2.pling.com/api/files/download/id/1573027727/s/a6d68ecaa67a8df4ba395880fa4985561ece21163d30c5b6dcdb4ccdc203887f5db6752a26e598ba48b23968e1653b8f09d093392f3b76ccd58e8aae8e12c6dc/t/1574029162/c/51692e834285c0401b49f47239ea7e2dfe280ff98c5b93c1c17deab424afbaa8ddfadeaeb93a31e19f8e986010b0025ca4105e16b24b9ffd80fae59de9f27baf/lt/download/02-McMojave-circle-black.tar.xz"
URL_THEMES_CURSORS="https://dllb2.pling.com/api/files/download/id/1551970677/s/51a4925a3d974d26ead99ce6d94321a3cbb73811effd84716f409ea2ed92285f37dceaff3a538a89780046048b76c0d7528b21f021e580327ec9c3167f26c44a/t/1574029326/c/51692e834285c0401b49f47239ea7e2dfe280ff98c5b93c1c17deab424afbaa8ddfadeaeb93a31e19f8e986010b0025ca4105e16b24b9ffd80fae59de9f27baf/lt/download/capitaine-cursors-r3.tar.gz"
URL_THEMES_PLANK="https://dllb2.pling.com/api/files/download/id/1569461965/s/8b90b2fdef8b270364be7ffcbbab0f922a6a34f428189808a52e2d54d7db0709a2667f2af2e347e1320007d4f4cd9c3009b1fe2e75b9484c286d654b830f193b/t/1574029788/c/51692e834285c0401b49f47239ea7e2dfe280ff98c5b93c1c17deab424afbaa8ddfadeaeb93a31e19f8e986010b0025ca4105e16b24b9ffd80fae59de9f27baf/lt/download/macOS%20Mojave%20Night.zip"

DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"
mkdir $DIRETORIO_DOWNLOADS

PROGRAMAS_PARA_INSTALAR=(
  plank
  git
  spotify-client
  nodejs
  apache2
  mysql-server
  php 
  postgresql
  postgresql-contrib
  libapache2-mod-php 
  php-mysql 
  php-mcrypt
  php-zip
  php-gettext
  php-common 
  php-xml 
  php-dom 
  php-pgsql 
  php-mbstring 
  php-curl 
  php-gd 
  memcached 
  php-memcached 
  php-sybase 
  php-json 
  php-xml
)


## spotify ## 
echo "downloading Spotify "
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

## Node ## 
echo "downloading Node "
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
#Caso de erro na versão tina do linux mint https://unix.stackexchange.com/questions/538536/newest-version-of-nodejs-is-not-intalling-in-linux-mint-tina


sudo apt update -y

## Download e instalaçao de programas externos ##
mkdir $DIRETORIO_DOWNLOADS

wget -c "$URL_GOOGLE_CHROME"    -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_VSCODE"           -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_SLACK"            -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_DBEAVER"          -P "$DIRETORIO_DOWNLOADS"

## Instalando pacotes .deb baixados na sessão anterior ##
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb


# Install programs in apt - shell
for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
  if ! dpkg -l | grep -q $nome_do_programa; then # Only install if not already installed
    apt install "$nome_do_programa" -y
  else
    echo "[INSTALADO] - $nome_do_programa"
  fi
done

## Angular ## 
echo "installing Angular "
npm install -g @angular/cli

## Download and install Composer Latest: v1.9.1 ## 
echo "Install Composer "
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'baf1608c33254d00611ac1705c1d9958c817a1a33bce370c0595974b342601bd80b92a3f46067da89e3b06bff421f182') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

composer 

echo "installing Laravel "
composer global require laravel/installer

## install wine
echo "installing Wine "
sudo apt install --install-recommends winehq-stable wine-stable wine-stable-i386 wine-stable-amd64 -y

#themes icons cursors ...

# DIRTHEMES="$HOME/Downloads/themes"
# sudo mkdir "$DIRTHEMES"
# sudo mkdir "$DIRTHEMES/Mojave-dark"
# sudo mkdir "$DIRTHEMES/icons-01-McMojave-circle"
# sudo mkdir "$DIRTHEMES/icons-02-McMojave-circle-black"
# sudo mkdir "$DIRTHEMES/capitaine-cursors-r3"
# sudo mkdir "$DIRTHEMES/plank_macOS_Mojave_Night"
# sudo chmod 777 -R $DIRTHEMES

# wget "$URL_THEMES"    -P "$DIRTHEMES/Mojave-dark"  -O "$DIRTHEMES/Mojave-dark/Mojave-dark.tar.xz"
# wget "$URL_THEMES_ICONS"    -P "$DIRTHEMES/icons-01-McMojave-circle"  -O "$DIRTHEMES/icons-01-McMojave-circle/icons-01-McMojave-circle.tar.xz"
# wget "$URL_THEMES_ICONS_2"    -P "$DIRTHEMES/icons-02-McMojave-circle-black"  -O "$DIRTHEMES/icons-02-McMojave-circle-black/icons-02-McMojave-circle-black.tar.xz"
# wget "$URL_THEMES_CURSORS"    -P "$DIRTHEMES/capitaine-cursors-r3"  -O "$DIRTHEMES/capitaine-cursors-r3/capitaine-cursors-r3.tar.gz"
# wget "$URL_THEMES_PLANK"    -P "$DIRTHEMES/plank_macOS_Mojave_Night"  -O "$DIRTHEMES/plank_macOS_Mojave_Night/plank_macOS_Mojave_Night.zip"


#tar -xvf "$DIRTHEMES/Mojave-dark/Mojave-dark.tar.xz"
#sudo tar -xvf "$DIRTHEMES/icons-01-McMojave-circle/icons-01-McMojave-circle.tar.xz icons-01-McMojave-circle/"
#sudo tar -xvf "$DIRTHEMES/icons-02-McMojave-circle-black/icons-02-McMojave-circle-black.tar.xz icons-02-McMojave-circle-black/"
#sudo tar -xvf "$DIRTHEMES/capitaine-cursors-r3/capitaine-cursors-r3.tar.gz capitaine-cursors-r3/"
#sudo unzip -q "$DIRTHEMES/plank_macOS_Mojave_Night/plank_macOS_Mojave_Night.zip plank_macOS_Mojave_Night/"





# ----------------------------- PÓS-INSTALAÇÃO ----------------------------- #
## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade -y
sudo apt autoclean
sudo apt autoremove -y
# ---------------------------------------------------------------------- #


