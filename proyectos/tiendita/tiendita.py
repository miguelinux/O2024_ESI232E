import menu
import carrito
import producto

opcion_menu_principal = 0
opcion_menu_productos = 0

nombre_archivo = "tiendita.csv"

while opcion_menu_principal != 9:
    menu.principal()
    opcion_menu_principal = eval(input("Opcion: "))

    if opcion_menu_principal == 1:
        opcion_menu_productos = 0
        while opcion_menu_productos != 9:
            menu.productos()
            opcion_menu_productos = eval(input("Opción: "))

            if opcion_menu_productos == 1: # Carnes frias
                producto.mostrar("carnes frias", nombre_archivo)
            elif opcion_menu_productos == 2: # Frutas y verduras
                producto.mostrar("frutas y verduras", nombre_archivo)
            elif opcion_menu_productos == 3:  # Regrescos
                producto.mostrar("refrescos", nombre_archivo)
            elif opcion_menu_productos == 4:  # Lacteos
                producto.mostrar("lacteos", nombre_archivo)
            elif opcion_menu_productos == 5:  # Sabritas
                producto.mostrar("sabritas", nombre_archivo)

    elif opcion_menu_principal == 2:
        carrito.mostrar(nombre_archivo)
    elif opcion_menu_principal == 3:
        print("mostrar cuenta total")


