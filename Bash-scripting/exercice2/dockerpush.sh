#!/bin/bash

clear
echo " "
echo " script bash qui builde votre image grace aux differents dockerfiles , les tag et les push directement dans le repository"
echo ""
echo "par defaut le chemein de fichier vers nos diffeernts dockerfile builde est "
echo ""
echo "/home/patrice/workyamo/TP-Automatisation/Docker/exercice2/httpd/Dockerfile    et"
echo "/home/patrice/workyamo/TP-Automatisation/Docker/exercice2/nginx/Dockerfile"
echo ""
echo ""
echo ""
echo "lancement de l'operation de build"
echo "***************** build de l'image nginx port 5000**********************"
docker build -t patnginx /home/patrice/workyamo/TP-Automatisation/Docker/exercice2/nginx
sleep 10s
clear
echo "***************** build de l'image httpd port 8000**********************"
docker build -t pathttpd  /home/patrice/workyamo/TP-Automatisation/Docker/exercice2/httpd
sleep 10s
clear
echo ""
echo ""
echo "*****************Debut du tag et envoi des image locals sur le dockerhub ********************"
echo ""
echo "docker tag nginx/patrice patricehuh/nginx:latest"
docker tag nginx/patrice patricehub/nginx:latest
echo ""
echo "docker push patricehub/nginx:latest"
docker push patrice/nginx:latest
echo ""
echo ""
echo "docker tag httpd/patrice patricehuh/httpd:latest"
docker tag httpd/patrice patricehub/httpd:latest
echo ""
echo "docker push patricehub/httpd:latest"
docker push patrice/httpd:latest
clear
echo ""
echo ""
echo ""
echo "************************** succes *******************************"
echo ""
echo "************************** MERCI********************************"



