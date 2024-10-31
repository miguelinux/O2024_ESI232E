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


