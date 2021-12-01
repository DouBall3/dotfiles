# .bashrc
SHELL_DIR=$HOME/.config/shell

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Disable XON/XOFF Flow control
[[ $- == *i* ]] && stty -ixon

# Aliases
source $SHELL_DIR/aliases.sh

# Variables
source $SHELL_DIR/vars.sh
export HISTFILE=$SHELL_DIR/.bash_history

# Functions
source $SHELL_DIR/functions.sh

export QSYS_ROOTDIR="/home/douball/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/21.1/quartus/sopc_builder/bin"
