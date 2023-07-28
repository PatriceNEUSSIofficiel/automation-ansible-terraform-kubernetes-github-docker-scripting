


################################################## WORK ET YAMO  ########################################################################




############## 1. Explication d'un provisionner : 

Un provisionner est un outil ou un mécanisme utilisé pour effectuer des configurations, installations et
déploiements automatisés sur des machines virtuelles, des conteneurs ou
des infrastructures cloud. Il permet de préparer l'environnement cible en
installant des logiciels, en configurant des services et en déployant des
applications, garantissant ainsi que l'infrastructure est prête à être utilisée.


############### 2. Différence entre le provider et le provisionner :

 Le provider dans Terraform est responsable de l'interaction avec l'infrastructure cible,
comme un cloud provider (AWS, GCP, Azure) ou un gestionnaire de
configuration (Kubernetes). Le provisionner, quant à lui, est responsable
de l'exécution des scripts et des configurations sur les machines ou les
conteneurs déployés. En d'autres termes, le provider est responsable de la
gestion de l'infrastructure, tandis que le provisionner est responsable de la
configuration des machines ou des conteneurs.

############### 3. Explication des modules et leurs avantages : Les modules dans

Terraform sont des unités de réutilisation qui permettent d'organiser et de
structurer le code Terraform en composants autonomes. Les avantages des
modules sont :
- Réutilisation : Les modules peuvent être utilisés dans différents projets,
ce qui facilite la réutilisation du code et assure une cohérence entre les
déploiements.
- Maintenance : Les modules facilitent la maintenance du code en le
rendant plus modulaire et en permettant de gérer chaque composant
séparément.
- Abstraction : Les modules permettent d'abstraire les détails
d'implémentation, ce qui facilite l'utilisation de l'infrastructure sans avoir
besoin de connaître tous les détails internes.
