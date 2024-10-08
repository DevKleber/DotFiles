#!/bin/bash

source menu/copyImages.sh

# Desenvolvimentos em geral
# source menu/menu/dev.sh
# source menu/item/Dev/git.sh
# source menu/item/Dev/atualizar.sh
source menu/item/Dev/switchMonitor.sh

# conectar nos servidores
# source menu/menu/servers.sh
# source menu/item/servers/sigaderr.sh
source menu/item/servers/ipeweb_hostgator.sh
source menu/item/servers/ipeweb_banco.sh
source menu/item/servers/ipeweb_codigo.sh


# source menu/item/servers/bartergooglecloud.sh
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

source menu/item/servers/ikhon-aderr-homologacao.sh
source menu/item/servers/ikhon-aderr-homologacao-new.sh
source menu/item/servers/ikhon-aderr-deploy.sh
source menu/item/servers/ikhon-aderr-producao.sh

source menu/item/servers/sigeal_codigo.sh
source menu/item/servers/sigeal-bancodedados-producao.sh
source menu/item/servers/sigeal-homologacao.sh

source menu/item/servers/ADAB-SIDAB-DB-PRD.sh
source menu/item/servers/ADAB-SIDAB-HML.sh
source menu/item/servers/ADAB-SIDAB-PRD.sh

source menu/item/servers/conexoes.sh

# atualizar_server
# source menu/menu/atualizar_server.sh
source menu/item/atualizar_server/sigaderr.sh
source menu/item/atualizar_server/sigama.sh
source menu/item/atualizar_server/sisdiagro.sh

# reiniciar server
source menu/item/reiniciar_server/sigaderr.sh
source menu/item/reiniciar_server/sidapi.sh


# source menu/menu/phpversion.sh
# source menu/item/php7.1.sh
# source menu/item/php7.4.sh
# source menu/item/php8.sh
# source menu/item/php8.1.sh