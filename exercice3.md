#### 1.Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux
- Cat /etc/passwd

#### 2.Quelle commande bash permet de changer les droits du fichier myfile en rwxr—r-- ?
- La commande chmod 744 myfile qui donne les permissions par défaut.

#### 3.Comment faire pour que les fichiers pdf d'un dépôt local git ne soient pas pris en compte lors d'un git push ?
- Pour ignorer tous les fichiers pdf : *.pdf dans le fichier .gitignore

#### 4.Quelles commandes git utiliser pour fusionner les branches main et test valide ?
- git checkout test_valide 
- git merge branch main

#### 5.Donne-la (les) ligne(s) de commande(s) bash pour afficher le texte suivant :
- echo "Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :"
- echo "Bonjour est-ce que ce clavier fonctionne bien ?"
- echo "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !"
- echo "Même des tildes ~ ?"
- echo "Evidemment !"

#### 6.Quelle commande te permet de mettre en avant le processus gedit ?
- grep gedit

#### 7. Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités.
- Couche 3 (Internet) : le routeur ---> achemine les pâques et les vérifies avec des restrictions d’entrée et sortie (fait une connexion entre les réseaux LAN et WAN).

- Couche 2 (liaison des donner) : le switch ---> Multiprises pour RJ45 intelligent qui transfert les paquets aux destinataires sur le Réseau LAN.

- Couche 1 (physique) : Hub ---> C’est comme une multiprise pour cable RJ45.

#### 8. Quels sont les équivalent PowerShell des commandes bash cd, cp, mkdir, ls.
- cd -------> set-location
- cp -------> Copy-Item
- mkdir ----> New-Item
- ls -------> Get-ChildItem

#### 9. Dans la trame ethernet, qu'est-ce que le payload ?
- Dans une trame Ethernet, le payload sont les données données transportées.

#### 10. Pourquoi les classes IP sont remplacées par le CIDR ?
- Pour augmenter le nombre d'adresses IPv4 disponibles et éviter le gaspillage.
