#include <stdio.h>
#include <stdlib.h>
#include "datos.h"
#include "calculos.h"

int main() {
    int opcion;
    char continuar;
    char usuario[50], clave[50];
    printf("Ingrese usuario: ");
    scanf("%s", usuario);
    printf("Ingrese clave: ");
    scanf("%s", clave);

    if (validarUsuario(usuario, clave)) {
        registrarEvento(usuario, "Ingreso exitoso al sistema");
        int opcion;

    do {
        mostrarMenu();
        opcion = leerOpcion();

        double resultado1, resultado2;
        switch (opcion) {
            case 1:
                resultado1 = calcularAreaTriangulo();
                resultado2 = calcularPerimetroTriangulo();
                mostrarResultados("Triángulo", resultado1, resultado2);
                registrarEvento(usuario, "Triángulo");
                
                break;
            case 2:
                resultado1 = calcularAreaParalelogramo();
                resultado2 = calcularPerimetroParalelogramo();
                mostrarResultados("Paralelogramo", resultado1, resultado2);
                registrarEvento(usuario, "Paralelogramo");
                break;
            case 3:
                resultado1 = calcularAreaCuadrado();
                resultado2 = calcularPerimetroCuadrado();
                mostrarResultados("Cuadrado", resultado1, resultado2);
                registrarEvento(usuario, "Cuadrado");
                break;
            case 4:
                resultado1 = calcularAreaRectangulo();
                resultado2 = calcularPerimetroRectangulo();
                mostrarResultados("Rectángulo", resultado1, resultado2);
                registrarEvento(usuario, "Rectángulo");
                break;
            case 5:
                resultado1 = calcularAreaRombo();
                resultado2 = calcularPerimetroRombo();
                mostrarResultados("Rombo", resultado1, resultado2);
                registrarEvento(usuario, "Rombo");
                break;
            case 6:
                resultado1 = calcularAreaTrapecio();
                resultado2 = calcularPerimetroTrapecio();
                mostrarResultados("Trapecio", resultado1, resultado2);
                registrarEvento(usuario, "Trapecio");
                break;
            case 7:
                resultado1 = calcularAreaCirculo();
                resultado2 = calcularPerimetroCirculo();
                mostrarResultados("Círculo", resultado1, resultado2);
                registrarEvento(usuario, "Círculo");
                break;
            case 8:
                resultado1 = calcularAreaPoligonoRegular();
                resultado2 = calcularPerimetroPoligonoRegular();
                mostrarResultados("Polígono Regular", resultado1, resultado2);
                registrarEvento(usuario, "Polígono Regular");
                break;
            case 9:
                resultado1 = calcularSuperficieCubo();
                resultado2 = calcularVolumenCubo();
                mostrarResultados("Cubo", resultado1, resultado2);
                registrarEvento(usuario, "Cubo");
                break;
            case 10:
                resultado1 = calcularSuperficieCuboide();
                resultado2 = calcularVolumenCuboide();
                mostrarResultados("Cuboide", resultado1, resultado2);
                registrarEvento(usuario, "Cuboide");
                break;
            case 11:
                resultado1 = calcularSuperficieCilindro();
                resultado2 = calcularVolumenCilindro();
                mostrarResultados("Cilindro", resultado1, resultado2);
                registrarEvento(usuario, "Cilindro");
                break;
            case 12:
                resultado1 = calcularSuperficieEsfera();
                resultado2 = calcularVolumenEsfera();
                mostrarResultados("Esfera", resultado1, resultado2);
                registrarEvento(usuario, "Esfera");
                break;
            case 13:
                resultado1 = calcularSuperficieCono();
                resultado2 = calcularVolumenCono();
                mostrarResultados("Cono", resultado1, resultado2);
                registrarEvento(usuario, "Cono");
                break;
            default:
                printf("Opción no válida\n");
        }

        printf("¿Desea analizar otra figura? (s/n): ");
        scanf(" %c", &continuar);
    } while (continuar == 's' || continuar == 'S');
       registrarEvento(usuario, "Salida del sistema");
     
    } else {
        registrarEvento(usuario, "Ingreso fallido usuario/clave erróneo");
        printf("Usuario o clave incorrectos.\n");
    }
    return 0;
}
