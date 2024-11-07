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
        # >>> aqui falta código
        print(lista[0])  # esta línea se debe de quitar
        break
    else:
        # lista[1] guarda el nombre del pokemon
        # >>> aqui falta código
        print(lista[1])  # esta línea se debe de quitar
else:
    print("No se encontro el Pokemon")

