#!/bin/bash

echo "Configura o terminal com o fonte baixada em Edit > Preferences > Custom Fonts"
echo "Escolha a fonte Fira Code Retina com a fonte 10 "

echo "Vou abrir o arquivo de configuração e voce adicione e troque essas configurações."

echo 'SPACESHIP_PROMPT_ORDER=('
echo '  user          # Username section'
echo '  dir           # Current directory section'
echo '  host          # Hostname section'
echo '  git           # Git section (git_branch + git_status)'
echo '  hg            # Mercurial section (hg_branch  + hg_status)'
echo '  exec_time     # Execution time'
echo '  line_sep      # Line break'
echo '  vi_mode       # Vi-mode indicator'
echo '  jobs          # Background jobs indicator'
echo '  exit_code     # Exit code section'
echo '  char          # Prompt character'
echo ')'
echo 'SPACESHIP_USER_SHOW=always'
echo 'SPACESHIP_PROMPT_ADD_NEWLINE=false'
echo '# SPACESHIP_CHAR_SYMBOL="›"'
echo 'SPACESHIP_CHAR_SYMBOL="⤷"'
echo 'SPACESHIP_CHAR_SUFFIX=" "'
sleep 3

code ~/.zshrc