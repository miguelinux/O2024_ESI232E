import menu
import funciones

opcion_menu = 0

while opcion_menu != 4:
    opcion_menu = menu.principal()
    if opcion_menu == 1:
        funciones.agregar()
    elif opcion_menu == 2:
        funciones.mostrar()
    elif opcion_menu == 3:
        funciones.mostrar()
        numero = eval(input("Escribe el número para eliminar: "))
        si_borrar = input("Estas seguro (S/n): ")
        if si_borrar.lower()[0] == "s":
            funciones.borrar(numero)
    elif opcion_menu == 4:
        pass
    else:
        print("Opción Invalida")

