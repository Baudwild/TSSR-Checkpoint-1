#!/bin/bash

#Création utilisateur
useradd : $user
sudo adduser $user

#vérification de la présence d'arguments
If
Then 
echo "Il manque les noms d'utilisateurs en argument - Fin du script"

#vérification de l'existence de l’utilisateur dans le système 
If  $user /etc/passwd
Then
echo"L'utilisateur $user existe déjà"

#vérification de création de l’utilisateur
If
echo "L'utilisateur $user a été crée"
then
	echo "Erreur à la création de l'utilisateur $user"
fi
