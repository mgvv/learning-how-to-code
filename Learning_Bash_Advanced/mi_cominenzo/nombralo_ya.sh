#!/bin/bash -
#===============================================================================
#
#          FILE: nombralo_ya.sh
#
#         USAGE: ./nombralo_ya.sh
#
#   DESCRIPTION: Este Archivo forma el nombre a utilizar para tws dependiendo del sistema que se elija
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Manuel Gabriel Veliz Vega (MGW), mgveliz@gmail.com
#  ORGANIZATION: AoO
#       CREATED: 31/01/17 15:01:11
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

declare job
declare system
declare tws
declare str

job="$1"
system="$2"

job=$(tr -s ' ' '_' <<< "$job")

case $system in
	LCA)
		job="LTS_LCA_${job}"
		echo -n "${job}" | xclip -selection c
		;;

	LC2)
		job=$(echo "LTS_LC2_${job}")
		echo -n "${job}" | xclip -selection c
		;;

	LCU)
		job="LTS_LCU_${job}"
		echo -n "${job}" | xclip -selection c
		;;

	LCD)
		job="LTS_LCD_${job}"
		echo -n "${job}" | xclip -selection c
		;;

	LCB)
		job="LTS_LCB_${job}"
		echo -n "${job}" | xclip -selection c
		;;

	*)
		echo "System doesn't exist"
		;;

esac    # --- end of case ---
