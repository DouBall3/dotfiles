#!/bin/bash
set -o pipefail
nmcli con show --active | grep -i vpn | cut -d' ' -f1 | tr '\n' "," | sed -s 's/,$//' || echo DOWN
