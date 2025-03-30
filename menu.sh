#!/bin/bash

source menu/copyImages.sh

# Desenvolvimentos em geral
# source menu/menu/dev.sh
# source menu/menu/servers.sh # cinamon - linux mint [após a criação do menu comentar para não repetir]

# source menu/item/Dev/git.sh
# source menu/item/Dev/atualizar.sh
source menu/item/Dev/switchMonitor.sh

# conectar nos servidores

source menu/item/servers/ipeweb_hostgator.sh
source menu/item/servers/ipeweb_nas.sh
source menu/item/servers/ipeweb_banco.sh
source menu/item/servers/ipeweb_codigo.sh
source menu/item/servers/ipewebinfra.sh

#falcon
source menu/item/servers/falcon.sh

# filhos SIDAGO
source menu/item/servers/siagro.sh
source menu/item/servers/sidato_vps.sh
source menu/item/servers/sergipe_vps.sh
source menu/item/servers/sigaderr.sh


# source menu/item/servers/sidaam-bancoproducao.sh
# source menu/item/servers/sidaam-codigo+bdhomologacao.sh
source menu/item/servers/sidap-homologacao.sh

source menu/item/servers/sidap.sh
source menu/item/servers/sidapi.sh

source menu/item/servers/sigama_bancodados.sh
source menu/item/servers/sigama-homologacao.sh
source menu/item/servers/sigamaproducao.sh
source menu/item/servers/sigamaproducaoscripts.sh

source menu/item/servers/sisdiagro.sh

source menu/item/servers/sigeal_codigo.sh
source menu/item/servers/sigeal-bancodedados-producao.sh
source menu/item/servers/sigeal-homologacao.sh

source menu/item/servers/ADAB-SIDAB-DB-PRD.sh
source menu/item/servers/ADAB-SIDAB-HML.sh
source menu/item/servers/ADAB-SIDAB-PRD.sh


# source menu/menu/phpversion.sh
# source menu/item/php7.1.sh
# source menu/item/php7.4.sh
# source menu/item/php8.sh
# source menu/item/php8.1.sh