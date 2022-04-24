#!/bin/bash
echo "\n\n"
echo "Configura o terminal com o fonte baixada em Edit > Preferences > Custom Fonts"
echo "Escolha a fonte Fira Code Retina com a fonte 10 "
sleep 5

echo "\n\n"
echo "Vou abrir o arquivo de configuração e voce adicione e troque essas configurações."
sleep 5

echo "\n\n"
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

echo "no final de tudo cole esse código"
echo "\n\n"
echo "zinit light zdharma-continuum/fast-syntax-highlighting"
echo "zinit light zsh-users/zsh-autosuggestions"
echo "zinit light zsh-users/zsh-completions"
echo "zinit light zsh-users/zsh-history-substring-search"

sleep 3

echo "\n\n"
echo "Após instalado, voce deve reiniciar o computador"
echo "\n\n"
echo "Se aparecer o erro"
echo "$USER/.oh-my-zsh/oh-my-rsh.sh:source:177: no such file or directory: /$USER/.oh-my-zsh/themes/spaceship.zsh-theme"

echo "\n\n"
echo "rode esses comandos"
echo 'sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"'
echo 'sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"'

code ~/.zshrc