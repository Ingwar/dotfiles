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
antigen theme bhilburn/powerlevel9k powerlevel9k

# Tell Antigen that you're done.
antigen apply

### End of Antigen config ###


### Oh-my-zsh config ###

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

### End of oh-my-zsh config ###


### Powerlevel9k theme config ###

# Left and right prompt segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time root_indicator background_jobs history time)

# Set default user for the context segment (it won't be displayed when the user matches default user and we are not in SSH session)
DEFAULT_USER=ingwar

# Colors for the context segment
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="green"

# Colors for the current directory segment
POWERLEVEL9K_DIR_HOME_BACKGROUND='042'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='042'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'

# Colors for the virtualenv segment
POWERLEVEL9K_VIRTUALENV_FOREGROUND='white'

### End of Powerlevel9k config ###


### Miscellaneous settings ###

# Set user-level $PATH to include local directories
export PATH=$PATH:~/local/bin:~/bin

# Change path to the default history file
HISTFILE=$HOME/.history
