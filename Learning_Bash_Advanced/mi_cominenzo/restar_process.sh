#!/bin/bash
#Script looks at process name and kill it.
#Delcare Variables
PNumber="$(ps -f -u $USER | grep -i $1 | awk 'NR==1{print $2}')"
#Process number
#echo $PNumber
if [[ -z "$PNumber" ]]; then
  #statements
  echo "No processes found, try another process name"
  break
else
  #statements
  echo "########################"
  echo "I found this process number " $PNumber " and belongs to " $USER
  echo "########################"
fi
#
#Empieza menu con select
#
select ACT in Kill-it Show-it Quit; do
  if [[ -n "$ACT" ]]; then
      if [[ "$ACT" == "Kill-it" ]]; then
        echo "Para evitar errores, te muestro la informacion del proceso,"
        ps -f --pid $PNumber
        echo "..."
        echo Mantando el proceso $PNumber
        sleep 2
      elif [[ "$ACT" == "Show-it" ]]; then
        echo Mostrando el proceso $PNumber
        ps -f --pid $PNumber
        echo Seguro que deseas Matar este proceso
        read ACT
        echo $ACT
      elif [[ "$ACT" == "Quit" ]]; then
        #statements
        echo Adios
        sleep 2
        break
      fi
  else
      echo Necesito una respuesta
  fi
done

#LinuxL263
#EOF
