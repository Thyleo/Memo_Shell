#!/bin/bash

usage(){
    echo -e "\nDebut du jeu de devinette"
    echo -e "Explications : \n"
    echo -e "Vous aurez à deviner le chiffre généré aléatoirement par le programme en un nombre de tentatives le plus court possible \n"
    echo -e "A vous de jouer !!! \n"
}

rejouer(){
    echo -e "Voulez-vous rejouer ?"
    echo -e "Choisissez entre oui / non \n"
    read bool
    
    if [[ "$bool" = "oui" ]]
    then
        ./jeu_dichotomie.sh
    elif [[ "$bool" = "non" ]]
    then
        echo "\nFin du jeu. Je vous remercie !"
        exit
    else
        echo -e "\nChoix non compris. Réessayer ! \n"
        rejouer
    fi
}


reponse=$(($RANDOM % 10))
score=0
loop=-1
usage

echo "Renseignez un nombre : "
read choix

while [[ 0 ]]
do
    loop=`expr $loop + 1`
    case $choix in
    $reponse) echo -e "\nFélicitations, vous avez gagné !!"
              echo "Votre score est de : $score"
              echo -e "Nombres de tentatives : $loop \n"
              rejouer;;
              
    *) if [[ $choix -lt $reponse ]]
        then
        
            echo -e "Le nombre à deviner est plus grand ! \n"
            
        elif [[ $choix -gt $reponse ]]
        then
            echo -e "Le nombre à deviner est plus petit ! \n"
            
        fi
        
        echo "Renseignez un nombre : "
       read choix;;
    esac
done
