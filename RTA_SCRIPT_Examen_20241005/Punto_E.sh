#!/bin/bash
echo "Encontrando Memoria RAM e Informacion de Chassis. Punto E"
free -h | grep Mem | awk '{print "Total de memoria RAM: "$2}' > /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_RONDON/RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
sudo dmidecode -t chassis | grep Manufacturer | awk '{print "Fabricante del chassis: "$2}'>> /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_RONDON/RTA_ARCHIVOS_Examen_20241005/Filtro_Basico.txt
