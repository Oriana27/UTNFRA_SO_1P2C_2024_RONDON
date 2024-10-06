#!/bin/bash
echo "Resolucion Punto C"
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
sudo useradd -m -s /bin/bash -c "p1c2_2024_A1" -p "$(sudo grep osboxes /etc/shadow | awk -F: '{print $2}')" p1c2_2024_A1
sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "p1c2_2024_A2" -p "$(sudo grep osboxes /etc/shadow | awk -F: '{print $2}')" p1c2_2024_A2
sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "p1c2_2024_A3" -p "$(sudo grep osboxes /etc/shadow | awk -F: '{print $2}')" p1c2_2024_A3
sudo usermod -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "p1c2_2024_P1" -p "$(sudo grep osboxes /etc/shadow | awk -F: '{print $2}')" p1c2_2024_P1
sudo usermod -G p1c2_2024_gProfesores p1c2_2024_P1
sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/Alumnos_1
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/Alumnos_2
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/Alumnos_3
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/Profesores
sudo chmod -R 750 /Examenes-UTN/Alumnos_1
sudo chmod -R 760 /Examenes-UTN/Alumnos_2
sudo chmod -R 700 /Examenes-UTN/Alumnos_3
sudo chmod -R 775 /Examenes-UTN/Profesores
su - p1c2_2024_A1
osboxes.org
whoami > /Examenes-UTN/Alumnos_1/validar.txt
su - p1c2_2024_A2
osboxes.org
whoami > /Examenes-UTN/Alumnos_2/validar.txt
su - p1c2_2024_A3
osboxes.org
whoami > /Examenes-UTN/Alumnos_3/validar.txt
su - p1c2_2024_P1
osboxes.org
whoami > /Examenes-UTN/Profesores/validar.txt
su – osboxes
osboxes.org

