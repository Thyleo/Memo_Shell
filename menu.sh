#!/bin/bash

echo -e "Menu du jeu \n" #-e pour interpréter le \n

usage(){
    echo "1) Jouer avec Cowsay"
    echo "2) Jouer avec sl"
    echo "3) Nettoyer la fenêtre"
    echo -e "4) Sortir du jeu \n "
}

ifFunction(){
        if [[ $choix -eq 1 ]]
        then
            echo -e "Que dois dire la vache ?\n"
            read mot
            cowsay $mot
            echo -e "La vache a fini de parler. \n"
        elif [[ $choix -eq 2 ]]
        then
            sl
            echo -e "Fin du passage du train \n"
        elif [[ $choix -eq 3 ]]
        then
            clear
            echo -e "Nettoyage de la fenêtre terminée ! \n"
        else
            echo -e "Choisissez une valeur correcte \n"
            usage
        fi

}

choix=0
while [[ $choix -ne 4 ]]
do
        case $choix in
            1) echo -e "Que dois dire la vache ?\n"
                read mot
                cowsay $mot
                echo -e "La vache a fini de parler. \n";;
            2) sl
                echo -e "Fin du passage du train \n";;
            3) clear
                echo -e "Nettoyage de la fenêtre terminée ! \n";;
            *) echo -e "Choisissez une valeur correcte \n";;
            esac
            
            usage
            echo -e "En attente d'un choix... \n"
            read choix
done

echo "Fin du programme !"
