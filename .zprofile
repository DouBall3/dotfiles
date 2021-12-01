if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx &> /dev/null
fi

export QSYS_ROOTDIR="/home/douball/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/21.1/quartus/sopc_builder/bin"
