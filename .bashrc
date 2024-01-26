export PS1='\u@\h:\[\e[33m\]\w\[\e[0m\]\$ '
export EDITOR='nvim'
export ClICOLOR=1

export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/home/ozgur/.local/bin"
. "$HOME/.cargo/env"

export PATH="$PATH:/home/ozgur/.foundry/bin"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
