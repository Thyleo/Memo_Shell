#!/bin/bash

#La commande 'tar' permet de gérer les archives

#'tar - cvf [nom_archive].tar ...' les 3 points sont des fichiers à ajouter dans l'archive. Avec l'option -f, on doit obligatoirement donner le contenu. Exemple : *.sh

#'tar - xvf [nom_archive].tar' Pour extraire l'archive

# =============== CRONTAB =============== #

#Pour utiliser le crontab, il faut d'abord créer un fichier [nom_fichier].txt et à l'intérieur, écrire :
# [minutes] [heure] [date] [mois] [jour] [chemin du fichier shell à exécuter]
# Exemple : 33 16 6 2 1 /Users/thierryheubo/Desktop/Git/SHELL/date.sh

#Ensuite, effectuer un : "crontab [Nom_fichier].txt"
#Pour vérifier la bonne exécution de la commande, utiliser un "crontab -l" pour afficher tous les cron en cours !

# =============== CUT ================== #



