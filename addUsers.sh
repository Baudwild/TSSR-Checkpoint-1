#!/bin/bash

# Demande le nom de l'utilisateur
read -p "Entrez le nom d'utilisateur à créer :" user

#vérification de l'existence de l’utilisateur dans le système 
if cat /etc/passwd | grep $user > /dev/null; 
then
echo "l'utilisateur $user existe déjà !"
else

#Création de l’utilisateur
if useradd $user
then
echo "L'utilisateur $user a été crée"
else
echo "Erreur à la création de l'utilisateur $user"
fi
fi
