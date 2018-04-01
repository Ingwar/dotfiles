# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ingwar"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git django mercurial pip python screen compleat  zsh-syntax-highlighting command-not-found)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/home/ingwar/local/bin:/home/ingwar/.gem/ruby/1.8/bin:/home/ingwar/.cabal-sandbox/bin:~/bin
