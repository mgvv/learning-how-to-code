#!/bin/bash - 
#===============================================================================
#
#          FILE: Parsing_Output_into_an_Array.sh
# 
#         USAGE: ./Parsing_Output_into_an_Array.sh 
# 
#   DESCRIPTION: You want the output of some program or script into an array
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Manuel Gabriel Veliz Vega (MGW), mgveliz@gmail.com
#  ORGANIZATION: AoO
#       CREATED: 26/06/17 16:37:07
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

declare -a LSL
declare -a FILES

LSL=$(ls -ld $1)
