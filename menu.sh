#!/bin/bash

PS3="Ingrese número de Script: "
echo "Menu Trabajo Final EDP: " 

select MENU in statsWords statsUseWords findNames statsSentences blankLinesCounter Exit
do
	case $MENU in
		"statsWords")
			bash statsWords.sh
			;;
		"statsUseWords")
			bash statsUseWords.sh
			;;
		"findNames")
			bash findNames.sh
			;;
		"statsSentences")
			bash statsSentences.sh
			;;
		"blankLinesCounter")
			bash blankLinesCounter.sh
			;;
		"Exit")
			echo "Fin del Script"
			break;;
                *)
			echo "Debe elegir una opción válida"
			;;
	esac
done
exit 0


