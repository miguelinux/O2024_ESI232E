#!/usr/bin/env python3
# c-basic-offset: 4; tab-width: 8; indent-tabs-mode: nil
# vi: set shiftwidth=4 tabstop=8 expandtab:
# :indentSize=4:tabSize=8:noTabs=true:
#
# SPDX-License-Identifier: GPL-3.0-or-later

# Abrimos el archivo de pokemon.txt
archivo = open("pokemon.txt")

pokemon = input("Ingresa el nombre o número de pokemon a buscar: ")

# Leemos cada línea
for linea in archivo:
    # Quitamos los espacios del principio y final con el método strip
    sin_espacios = linea.strip()

    # Se paramos la linea sin espacios por tabuladores ("\t")
    lista = sin_espacios.split("\t")

    if pokemon.isdigit():
        # lista[0] guarda el número del pokemon
        print(lista[0])
    else:
        # lista[1] guarda el nombre del pokemon
        print(lista[1])


