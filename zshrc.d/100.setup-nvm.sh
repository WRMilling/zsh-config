if [[ "$OSTYPE" == "darwin"* ]]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
  export PATH="$NVM_DIR/versions/node/$(<$NVM_DIR/alias/default)/bin:$PATH"
  alias nvm="unalias nvm; [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"; nvm $@"
elif [ -f "/usr/share/nvm/init-nvm.sh" ]; then
  source /usr/share/nvm/init-nvm.sh
else 
  export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
fi
