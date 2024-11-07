def principal():
    print("-------- Menu ---------")
    print("1: Agregar")
    print("2: Mostrar")
    print("3: Eliminar")
    print("4: Salir")
    opcion = input("Opcion: ")
    if opcion.isdigit():
        return eval(opcion)
    return 0
