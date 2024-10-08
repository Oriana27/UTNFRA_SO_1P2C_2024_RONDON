#!/bin/bash
echo "Particionando Disco G"
sudo fdisk /dev/sdc <<EOF
n
p


+1G
n
p


+1G
n
p


+1G
n
e


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w
EOF

sudo mkfs -t ext4 /dev/sdc1 
sudo mkfs -t ext4 /dev/sdc2
sudo mkfs -t ext4 /dev/sdc3
sudo mkfs -t ext4 /dev/sdc5
sudo mkfs -t ext4 /dev/sdc6
sudo mkfs -t ext4 /dev/sdc7
sudo mkfs -t ext4 /dev/sdc8
sudo mkfs -t ext4 /dev/sdc9
sudo mkfs -t ext4 /dev/sdc10
sudo mkfs -t ext4 /dev/sdc11
sudo mount /dev/sdc1 /Examenes-UTN/Alumnos_1/Parcial_1 
sudo mount /dev/sdc2 /Examenes-UTN/Alumnos_1/Parcial_2 
sudo mount /dev/sdc3 /Examenes-UTN/Alumnos_1/Parcial_3 
sudo mount /dev/sdc5 /Examenes-UTN/Alumnos_2/Parcial_1 
sudo mount /dev/sdc6 /Examenes-UTN/Alumnos_2/Parcial_2 
sudo mount /dev/sdc7 /Examenes-UTN/Alumnos_2/Parcial_3 
sudo mount /dev/sdc8 /Examenes-UTN/Alumnos_3/Parcial_1 
sudo mount /dev/sdc9 /Examenes-UTN/Alumnos_3/Parcial_2 
sudo mount /dev/sdc10 /Examenes-UTN/Alumnos_3/Parcial_3 
sudo mount /dev/sdc11 /Examenes-UTN/Profesores
echo "/dev/sdc1  /Examenes-UTN/Alumnos_1/Parcial_1  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "/dev/sdc2  /Examenes-UTN/Alumnos_1/Parcial_2  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "/dev/sdc3  /Examenes-UTN/Alumnos_1/Parcial_3  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "/dev/sdc5  /Examenes-UTN/Alumnos_2/Parcial_1  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "/dev/sdc6  /Examenes-UTN/Alumnos_2/Parcial_2  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "/dev/sdc7  /Examenes-UTN/Alumnos_2/Parcial_3  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "/dev/sdc8  /Examenes-UTN/Alumnos_3/Parcial_1  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "/dev/sdc9  /Examenes-UTN/Alumnos_3/Parcial_2  ext4  defaults  0  0" | sudo tee -a /etc/fstab 
echo "/dev/sdc10  /Examenes-UTN/Alumnos_3/Parcial_3  ext4  defaults  0  0" | sudo tee -a /etc/fstab
echo "/dev/sdc11  /Examenes-UTN/Profesores  ext4  defaults  0  0" | sudo tee -a /etc/fstab
sudo mount –a
