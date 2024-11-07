carrito = []
cantidad = []

def mostrar(nombre_archivo):
    archivo = open(nombre_archivo, "r")
    carrito_precio = []
    total = 0
    for producto in carrito:
        # seek se va al principio del archivo
        archivo.seek(0)
        for linea in archivo:
            lista = linea.split(",")
            if producto.lower() == lista[0].strip().lower():
                carrito_precio.append(lista[1])
                break

    print("{:<5s}{:<20s}{:>7s}{:>10s}{:>10s}".format("No.", "Nombre", "Cantidad", "P. Unit.", "Precio"))
    for indice in range(len(carrito)):
        print("{:<5d}{:<20s}{:>7d}{:>10.2f}{:>10.2f}".format(indice+1, carrito[indice], int(cantidad[indice]), float(carrito_precio[indice]), int(cantidad[indice])*float(carrito_precio[indice])))
        total += int(cantidad[indice])*float(carrito_precio[indice])

    print("-----------------------------------------")
    print("{:>42s}{:>10.2f}".format("Total:", total))

