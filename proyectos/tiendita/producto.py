import carrito

def mostrar(categoria, nombre_archivo):
    archivo = open(nombre_archivo, "r")
    productos = []
    numero = 1
    print("{:<5s}{:<20s}{:>7s}{:>7s}".format("No.", "Nombre", "Stock", "Precio"))
    for linea in archivo:
        lista = linea.split(",")
        if categoria.lower() == lista[3].strip().lower():
            productos.append(lista[0])
            print("{:<5d}{:<20s}{:>7d}{:>7.2f}".format(numero, lista[0], int(lista[2]), float(lista[1])))
            numero += 1
    print("-----------------------------------------")
    print("Elije el número de producto a comprar, o 0 para regresar")
    producto = eval(input("Opción: "))
    if producto != 0:
        cantidad = eval(input("¿Cuantos articulos deseas comprar?: "))
        carrito.carrito.append(productos[producto-1])
        carrito.cantidad.append(cantidad)

    archivo.close()
