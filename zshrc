### Antigen config ###
source /usr/share/zsh-antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle command-not-found
antigen bundle compleat
antigen bundle git
antigen bundle pip
antigen bundle python

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme ~/.antigen/bundles/local/themes ingwar

# Tell Antigen that you're done.
antigen apply

### End of Antigen config ###

### Oh-my-zsh config ###

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

### End of oh-my-zsh config ###

# Customize to your needs...
export PATH=$PATH:~/local/bin:~/bin
