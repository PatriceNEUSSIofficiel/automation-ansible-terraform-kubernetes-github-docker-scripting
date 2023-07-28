###### WORKETYAMO EXERCICES 18 juillet 2023

# WORK ET YAMO 




# automation-ansible-terraform-kubernetes-github-docker-scripting



##   Objectifs:

L'objectif de ce devoir est de mettre en pratique plusieurs concepts et technologies liés à
l'administration système, au développement d'applications et à l'infrastructure. Les différents
exercices abordent des sujets tels que Docker, Bash Scripting, GitHub, Terraform, Kubernetes et
Ansible. En réalisant ces exercices, vous allez acquérir l'expérience dans la création et la gestion de
conteneurs, le déploiement d'applications sur des clusters Kubernetes, l'automatisation de tâches
système avec des scripts Bash, la gestion de configurations avec Terraform et Ansible , et
l'utilisation de GitHub pour le versionnage et le déploiement de code. L'objectif global est de
renforcer vos compétences dans ces domaines et de vous permettre d'échouer une pile LAMP
(Linux, Apache, MySQL, PHP) sur un cluster Kubernetes.



##                                                              @@@  I - DOCKER   @@@

####  Exercice 1:

À l'aide de l'image du conteneur accessible via SSH, créez une nouvelle image et modifiez le
contenu du fichier authorized_keys de l'utilisateur "worketyamo" avec votre propre clé privée.
Installer python 3 dans cet image de conteneur
Une fois votre image créé tagger l’image et faites un push vers une docker registry

### Exercice 2:

Créez une image docker à partir de l’image nginx:latest . configurez le serveur nginx à écouter sur
le port 5000 (nom serveur:nginx)
Créez une image docker à partir d’une image httpd , configurez le serveur apache à écouter sur le
port 8000 (nom serveur:apache)
Tagger les image et faites un push dans un docker registryBash 

##                                                             @@@  II - SCRIPTING    @@@@

### Exercice 1 :

Créer un script bash réutilisable qui vous permettra de créer des modules terraform
automatiquement ( variables.tf, main.tf, ouputs.tf et Readme.md)

### EXERCICE 2 : 

Créer une script bash qui built votre image grace aux differents dockerfiles , les tag et les push
directement dans le repository


##                                                             @@@  III - GITHUB    @@@@

### Exercice 1 :

Creez un repository public github à l’aide d’un script terraform . Vous renseignez une description
mentionnant le thème de l’exercice et son but avec en début “WORKETYAMO” en majuscule
A chaque étape de l’exercice faites un commit portant un message court et une description
contenant l'énoncé de l’exercice
NB : CRÉER UN MODULE TERRAFORM POUR CELA ET PROTÉGEZ LES
INFORMATIONS SENSIBLES


##                                                              @@@  IV - TERRAFORM @@@@    
 
### Exercice 1 :

Configurez le backend directement sur le cluster kubernetes (secret_suffix=[votre nom])
Listez les différents providers et leurs versions
Utiliser des variables d’environnement pour les informations sensibles
Configurez les différents providers en tenant compte des bonnes pratiques
Buildez l’image docker cité plus haut grâce à terraform
Faite un push de l’image dans un docker registry à l’aide de terraform
Dans le Readme.md :
expliquez ce qu’est un provisionner
Expliquer la différence entre le provider et le provisionner
Expliquez les modules et donnez leurs avantages


##                                                             @@@  V - KEBERNETES    @@@@

### Exercice 1 :

Creez un module terraform nommé kubernetes dans ce module creez un module kubernetes-sshDans le fichier main.tf du module kubernetes appelez les différents modules
Dans le module kubernetes-ssh :
Créez 3 pods avec des noms differents (faites usage d’une boucle et variabiliser les noms des pods ,
et les labels afin de les réutiliser )
Créez un service de type Node Port à l’aide des trois pods créé plus haut
Récupérer le port node port dans un output nommé single_pod_port
Grâce aux provisionner renvoyer la valeur de l’output dans un fichier appelé infos à la racine de
votre dossier


#### Exercice 2 :

Refaites le même exercice en utilisant des replica sets avec 3 réplicats utilisant les mêmes
information que dans l’exercice 1

### Exercice 3 :

Refaites le même exercice en utilisant un déploiement avec 3 réplicats utilisant les mêmes
information que dans l’exercice 1

### Exercice 4 :

Dites la différence entre les 3 méthodes
Dites la différence qui existe en un replication controller et un replica set
Donnez la méthode la plus avantageuse et dites pourquoi .

### Exercice 5 :

Créez un module nommé kubernetes-server dans le module kubernetes .
Dans ce module creez un service grâce à un déploiement ; Ce deployment doit repliquer un pod
contenant les caractéristiques suivantes :
Deux conteneurs qui utilisent les images (httpd et nginx) que vous avez creer


##                                                                  @@@  VI - Ansible    @@@@


###  Exercice 1 :

Grâce aux services que vous avez créé dans Kubernetes-ssh Créer un inventory avec 3 groupes .
Faites usage des group_vars et host_vars pour gérer vos variables
Creer des roles :
Un rôle qui crée 3 utilisateurs et configurer leurs clés ssh
Un rôle qui installerait les utilitaires réseaux (ping, nslookup, dig etc…)
Un rôle qui install et configure un serveur apache



## @@@@@@@@@@@@@@@@   Faites usage des meilleures pratiques.   @@@@@@@@@@@@@@@@@@

##                                                              @@@  VII - Exercice de consolidation @@@

Déployer une stack LAMP sur le cluster KUBERNETES (Démontrez que vous êtes ingénieux )
Exposez la base de données à l’aide d’un service de type clusterIp
Exposer le serveur web à l’aide d’un service de type nodeportEtablissez la connexion entre les différents services afin de rendre la stack Lamp fonctionnelle








=======
##                                                                              WORK ET YAMO 
>>>>>>> refs/remotes/origin/main
