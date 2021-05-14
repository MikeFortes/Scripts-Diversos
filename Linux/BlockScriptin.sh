#!/bin/bash
if [[ $EUID -ne 0 ]]; then
echo "Rodar este script como root" 1>&2
exit 1
fi