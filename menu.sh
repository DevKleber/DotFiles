#!/bin/bash

source menu/copyImages.sh

# Desenvolvimentos em geral
source menu/menu/dev.sh
source menu/item/Dev/git.sh
source menu/item/Dev/atualizar.sh

# conectar nos servidores
source menu/menu/servers.sh
source menu/item/servers/sigaderr.sh
source menu/item/servers/ipeweb_hostgator.sh
source menu/item/servers/ipeweb_banco.sh
source menu/item/servers/ipeweb_codigo.sh

# atualizar_server
source menu/menu/atualizar_server.sh
source menu/item/atualizar_server/sigaderr.sh
source menu/item/atualizar_server/sigama.sh


# source menu/menu/phpversion.sh
# source menu/item/php7.1.sh
# source menu/item/php7.4.sh
# source menu/item/php8.sh
# source menu/item/php8.1.sh