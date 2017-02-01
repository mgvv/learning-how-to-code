#!/bin/bash - 
#===============================================================================
#
#          FILE: str_manipulation.sh
# 
#         USAGE: ./str_manipulation.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Manuel Gabriel Veliz Vega (MGW), mgveliz@gmail.com
#  ORGANIZATION: AoO
#       CREATED: 01/02/17 12:10:59
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

stringZ=$(date +%F)

echo ${#stringZ}                 # 15
echo `expr length $stringZ`      # 15
echo `expr "$stringZ" : '.*'`    # 15

echo ${stringZ:0}
echo ${stringZ:1}
echo ${stringZ:7}
echo ${stringZ:7:3}

echo ${stringZ//####-##-##-/___}


