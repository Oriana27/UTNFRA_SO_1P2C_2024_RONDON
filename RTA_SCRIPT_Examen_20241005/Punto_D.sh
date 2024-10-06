#!/bin/bash
echo "Creando estructura solicitada Punto D"
mkdir -p Estructura_Simetrica/{correo/{cartas_{1..100},carteros_{1..10}},clientes/cartas_{1..100}}
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
