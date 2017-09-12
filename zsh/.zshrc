# Path to your oh-my-zsh installation.
export ZSH=/home/rick/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bullet-train"

#  Powerline configuration
POWERLINE_RIGHT_B="time replacement"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git atom common-aliases docker)

# User configuration

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Increase ulimit to try and fix geth/meteor issues
ulimit -n 4096

export PATH=PATH:~/terraform/:~/packer/:$PATH
source $HOME/.cargo/env

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mc='~/bin/mc'
alias ms='npm start'
alias mdr='cd ~/dev/meteor'
alias oto='cd ~/dev/otonomos'
alias mm='meteor mongo'
alias mr='meteor reset'
alias gs='git status'
alias gp='git push'
alias gc='git commit'
alias ga='git add .'
alias gmd='git merge develop'
alias od='open dash://'
alias wp='webpack'
alias mupxs='mupx --config=config/staging/mup-staging.json --settings=config/staging/settings-staging-do.json'
alias psm='ps auxww | grep meteor'
alias ps='ps auxww'

# Set up some reaction commerce defaults

# Set up android sdk paths (required for Meteor Up tool - mup)
export ANDROID_HOME=/usr/local/opt/android-sdk

export DO1="104.131.110.55"

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

PRIETH=homestead.otonomos.com
SECETH=52.76.56.157
GPUETH=52.74.156.252

# Aliases for connecting to the main AWS machines
alias sshho='ssh ubuntu@homestead.otonomos.com'
alias sshmi='ssh ubuntu@$SECETH'
alias sshgp='ssh ubuntu@$GPUETH'
alias sshdemo='ssh ubuntu@demo.otonomos.com'
alias sshdev='ssh ec2-user@development.otonomos.com'
alias sshndev='ssh ubuntu@dev.otonomos.com'
alias sshdash='ssh ubuntu@dashboard.otonomos.com'
alias sshdashdb='ssh ubuntu@dashdb.otonomos.com'
#alias sshndash='ssh ubuntu@13.228.29.8'
alias ssheth='ssh ubuntu@eth.otonomos.com'
alias sshqa='ssh ec2-user@qa.otonomos.com'

alias sshhonew='ssh ubuntu@54.254.222.14'
alias sshgpnew='ssh ubuntu@54.254.209.206'

# Aliases for Phoenix machines on AWS
alias sshph1='ssh ubuntu@54.169.7.143'
alias sshph2='ssh ubuntu@52.77.241.119'
alias sshph3='ssh ubuntu@54.169.132.225'
alias sshph4='ssh ubuntu@52.221.241.218'

# Aliases for Parity ethereum client
alias paritydev='~/dev/parity/start-parity-dev-mode.sh'

alias mpr='env METEOR_PROFILE=100 meteor run --settings settings.json'
#alias localgeth='. ~/Development/meteor/Otonomos/go-ethereum/start-hacked-geth.sh'
#alias localgeth='. ~/Development/eth/otonomos/start-localhost-quicknode.sh'
alias localgeth='~/dev/otonomos/go-ethereum/build/bin/geth --datadir=/home/rick/eth/fixedDifficultyGeth --verbosity=5 --networkid=71172 --port=30301 --rpc --rpcaddr="127.0.0.1" --rpcport=8545 --rpcapi="web3,eth,personal" --rpccorsdomain="http://localhost:3000" --maxpeers=0 --nat "any" --etherbase '0xbc2f75089410376771bafd95bb90cca8d5d95fd2' --nodiscover --mine --minerthreads "1"'
alias gethattach='cd ~/eth/fixedDifficultyGeth/ && geth attach ipc:geth.ipc'
alias localipfs='ipfs daemon'
alias rarity='ssh root@139.59.234.253'
alias dogeth='docker run -it -p 8545:8545 -p 30301:30301 --name geth -v ~/eth/Ethereum:/root/.ethereum ethereum/client-go --fast --cache=1024 --verbosity=5 --networkid=71171 --port=30301 --etherbase "0x1d662ecfdb5188dcad309a75e5fe7e8d5cf59a48" --rpcapi="db,eth,net,web3,personal" --rpc --rpcaddr="0.0.0.0" --rpcport=8545 --rpccorsdomain="*" --bootnodes "enode://29a8d06e06e5e828a6a9c92a959c8b9920c0c48e40d61e2397a6047778ea4854d13baba2b23a15989324f93fd87ac85422bdb811108e7dac82764293bcd170c9@52.77.50.68:30301" --mine --minerthreads "1" --nat "any" --nodiscover'
alias domongo='docker run -it -p 27017:27017 --name mongo -v ~/Documents/Kitematic/otodb-clean-1/data/configdb:/data/configdb -v ~/Documents/Kitematic/otodb-clean-1/data/db:/data/db nexus7/otodb-clean-1:v0.1'
alias sshdbs='ssh -p 3000 gethadmin:4zur3R!ckb3hl@gethqp6lx.southeastasia.cloudapp.azure.com'
alias tf='terraform'
alias tfp='terraform plan'
alias checkbatt='upower -i $(upower -e | grep "BAT") | grep -E "state|to\full|percentage"'
alias sp='sudo pacman'
alias gethws='geth --datadir ~/eth/Ethereum --fast --cache=1024 --verbosity=5 --networkid=71171 --port 30301 --etherbase "0x1d662ecfdb5188dcad309a75e5fe7e8d5cf59a48" --rpcapi="db,eth,net,web3,personal" --rpc --rpcaddr="127.0.0.1" --rpcport=8545 --rpccorsdomain="*" --ws --wsapi="eth,web3,net" --bootnodes "enode://29a8d06e06e5e828a6a9c92a959c8b9920c0c48e40d61e2397a6047778ea4854d13baba2b23a15989324f93fd87ac85422bdb811108e7dac82764293bcd170c9@52.77.50.68:30301" --mine --minerthreads "1" --nat "any" --nodiscover'
alias gethipfs='. ~/dev/scripts/start-local-geth-ipfs.sh'
alias td='transset-df -p 0.8'

# Aliases for Azure
alias az='azure'
export AZURE_SUBSCRIPTION_ID=2e02ae9a-0d7f-427f-a172-3b97bd95e3a5
export AZURE_LOCATION=southeastasia

export azdev1='52.187.131.246'
export azdev2='52.187.128.203'
export azdev3='52.187.128.238'
export azdev4='52.187.134.51'
export azdev5='52.187.135.197'

# Azure ssh shortcuts for dev ethereum network
alias sshazdev1='ssh otonomos@$azdev1'
alias sshazdev2='ssh otonomos@$azdev2'
alias sshazdev3='ssh otonomos@$azdev3'
alias sshazdev4='ssh otonomos@$azdev4'
alias sshazdev5='ssh otonomos@$azdev5'

# Azure Parity PoA network
export azpoavm1='52.187.191.176'
export azpoavm2='52.187.186.148'

alias sshazpoa1='ssh otonomos@$azpoavm1'
alias sshazpoa2='ssh otonomos@$azpoavm2'

# setazpoa1() { az network public-ip list | grep poapip1 | awk '{ print "ssh otonomos@"$8 }' }
# alias sshpoa1=$(setazpoa1)

# Aliases for docker
alias dc='docker-compose'
alias do='docker'
alias dm='docker-machine'

export opip1='23.97.58.214'
export opip2='23.97.59.140'
export opip3='23.97.58.163'
export opip4='23.97.60.55'
export opip5='52.187.70.0'

# ew mongodb in dev on Azure (replicaset)
export dbdev1=52.187.134.18
export dbdev2=52.187.135.103
export dbdev3=52.187.128.174

alias sshdevdb1='ssh otonomos@$dbdev1'
alias sshdevdb2='ssh otonomos@$dbdev2'
alias sshdevdb3='ssh otonomos@$dbdev3'

alias sshgolbc='ssh otonomos@52.187.24.209'
alias sshgol='ssh otonomos@52.230.30.59'
alias sshgoldb='ssh otonomos@52.187.177.145'

alias sshgim='ssh otonomos@gimli.otonomos.com'

###-begin-pm2-completion-###
### credits to npm for the completion file model
#
# Installation: pm2 completion >> ~/.bashrc  (or ~/.zshrc)
#

# Tmuxinator
source ~/dev/tmuxinator/completion/tmuxinator.zsh
export EDITOR=code
alias tx='tmuxinator'

# cemu
alias botw='optirun wine ~/games/cemu_1.9.0/Cemu.exe'
alias botw2='optirun wine ~/games/cemu_1.7.5/Cemu.exe'
alias botw3='optirun wine ~/games/cemu_1.8.0b/Cemu.exe'

# New Dashboard
alias sshnew='ssh ubuntu@52.77.209.53'

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _pm2_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           pm2 completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _pm2_completion pm2
elif type compctl &>/dev/null; then
  _pm2_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       pm2 completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _pm2_completion + -f + pm2
fi
###-end-pm2-completion-###

alias ss='sudo systemctl suspend'

# IPS
alias sships='ssh -i /home/rick/.ssh/ips-keypair.pem ubuntu@54.169.246.113'

# Fix that irritating Meteor message...
sudo sysctl -p

alias scstart='sudo systemctl start'
alias scstatus='sudo systemctl status'
alias scstop='sudo systemctl stop'

# Aliases for Vagrant
alias vag='vagrant'
alias vssh='vagrant ssh'
alias vup='vagrant up'
alias vstat='vagrant status'
alias vprov='vagrant provision'
alias vsus='vagrant suspend'
alias vkill='vagrant destroy'

# Aliases for Ansible
alias ans='ansible'
alias ansplay='ansible-playbook playbook.yml'
