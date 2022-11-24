#!/bin/bash
pgrep -a openvpn$ || echo down && echo up
