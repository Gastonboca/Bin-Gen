#!/bin/bash

echo -e "\e[32m
╭━━╮╭━━┳━╮╱╭╮
┃╭╮┃╰┫┣┫┃╰╮┃┃
┃╰╯╰╮┃┃┃╭╮╰╯┃
┃╭━╮┃┃┃┃┃╰╮┃┃
┃╰━╯┣┫┣┫┃╱┃┃┃
╰━━━┻━━┻╯╱╰━╯
╭━━━┳━━━┳━╮╱╭╮
┃╭━╮┃╭━━┫┃╰╮┃┃
┃┃╱╰┫╰━━┫╭╮╰╯┃
┃┃╭━┫╭━━┫┃╰╮┃┃
┃╰┻━┃╰━━┫┃╱┃┃┃
╰━━━┻━━━┻╯╱╰━╯\e[0m"

echo -e "\e[31mGENERADOR DE BINES GASTON\e[0m"

generate_random_card() {
    echo "Numero de tarjeta: $((100000000 + RANDOM % 900000000))"
    echo "Fecha de expiracion: $((RANDOM % 12 + 1))/$((RANDOM % 10 + 1))/20$((RANDOM % 10 + 20))"
}

generate_manual_card() {
    read -p "Ingresa el número de tarjeta: " card_number
    read -p "Ingresa la fecha de expiracion (MM/YY): " expiration_date
    echo "Numero de tarjeta: $card_number"
    echo "Fecha de expiracion: $expiration_date"
}

echo "¿Quieres generar tarjetas con fechas aleatorias o manuales?"
echo "1. Aleatorias"
echo "2. Manuales"
read -p "Elige una opcion (1/2): " option

case $option in
    1)
        read -p "¿Cuantas tarjetas quieres generar? " count
        for ((i=1; i<=count; i++)); do
            echo "Tarjeta $i:"
            generate_random_card
            echo
        done
        ;;
    2)
        read -p "¿Cuantas tarjetas quieres generar? " count
        for ((i=1; i<=count; i++)); do
            echo "Tarjeta $i:"
            generate_manual_card
            echo
        done
        ;;
    *)
        echo "Opción inválida. Saliendo del script."
        ;;
esac