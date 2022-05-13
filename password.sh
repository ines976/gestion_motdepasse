#!/bin/sh

echo "password.sh: [-h] [-v] [-m] [-g] [-N] [-t] mot.."
while getopts "hmvgt" option # La commande interne getopts permet à un script d'analyser les options passées en argument ,les arguments sont hmvgt
do
  case $option in
         h)
		cat help.txt 
		;;
	m)
		cat menu.txt
		;;
	v)
		echo " Les auteurs sont : Rayan lahmar & Mohamed Houssem Rejeb /n"
		#cat password.sh
		;;
       g)
             exec ./graphique.sh 
              ;;
       t)
             exec ./test.sh 
              ;;    
  esac
done
echo 
echo "Good bye!"
