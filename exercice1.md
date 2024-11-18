## 1.1	Préparation du disque

### Identification du second disque dur :
- fdisk -l

![image1.png](https://github.com/Baudwild/TSSR-Checkpoint-1/blob/272f35492ba0544ca464c6678706d55b562c5793/Image%20Gestion%20du%20stockage/Image1.png)

Le 2ème disque de 10 GB et bien présent.

### Création de la partition DATA et SWAP:
- cfdisk /dev/sdb
- Je choisis dos (format MBR)
- Je créer 2 partions en fessent nouvelle partions en primaire.

![image2.png](https://github.com/Baudwild/TSSR-Checkpoint-1/blob/272f35492ba0544ca464c6678706d55b562c5793/Image%20Gestion%20du%20stockage/Image2.png)

Je fais sauvegarder avant de quitter 

### Formatage de la partition DATA :
(/dev/sdb1 = 6G)
- mkfs.ext4 -L DATA  /dev/sdb1
- Je fais la commande lsblk -f pour vérifier 

![image3.png](https://github.com/Baudwild/TSSR-Checkpoint-1/blob/272f35492ba0544ca464c6678706d55b562c5793/Image%20Gestion%20du%20stockage/Image3.png)

La partition de 6 Go est formatée et nommée "DATA"

### Formatage de la partition SWAP :
(/dev/sdb2 = 4G)
- mkswap -L SWAP /dev/sdb2
- lsblk -f pour vérifier

![image4.png](https://github.com/Baudwild/TSSR-Checkpoint-1/blob/272f35492ba0544ca464c6678706d55b562c5793/Image%20Gestion%20du%20stockage/Image4.png)

La partition de 4 Go est formatée et nommée "SWAP"

### Activation de la partition SWAP :
- swapon /dev/sdb2
- lsblk -f pour vérifier

![image5.png](https://github.com/Baudwild/TSSR-Checkpoint-1/blob/272f35492ba0544ca464c6678706d55b562c5793/Image%20Gestion%20du%20stockage/Image5.png)

La partition "SWAP" et bien activé.

### Désactivation de l'ancienne partition SWAP :
- swapoff /dev/sda5
- lsblk -f pour vérifier

 ![image6.png](https://github.com/Baudwild/TSSR-Checkpoint-1/blob/272f35492ba0544ca464c6678706d55b562c5793/Image%20Gestion%20du%20stockage/Image6.png)

 L'ancienne partition SWAP (sda5) a bien été désactivée.

### Vérification de la taille des partitions :
- fdisk -l
  
 ![image7.png](https://github.com/Baudwild/TSSR-Checkpoint-1/blob/272f35492ba0544ca464c6678706d55b562c5793/Image%20Gestion%20du%20stockage/Image7.png)

 Partions Ok

## 1.2 Montage

### Montage partitions du disque /dev/sdb1 :
- mkdir /mnt/data 
- mount -t ext4 /dev/sdb1 /mnt/data
- df -h

![image8.png](https://github.com/Baudwild/TSSR-Checkpoint-1/blob/main/Image%20Montage/Image8.png)

sdb1 et bien monté sur data.

### Modification du fichier /etc/fstab :
- lsblk -f

![image9.png](https://github.com/Baudwild/TSSR-Checkpoint-1/blob/main/Image%20Montage/Image9.png)

- nano /etc/fstab

![image10.png](https://github.com/Baudwild/TSSR-Checkpoint-1/blob/main/Image%20Montage/Image10.png)
