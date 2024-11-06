#include <stdio.h>
#include "datos.h"
#include <time.h>

void mostrarMenu() {
    printf("Para ingresar mas de un numero, estos deben ir separados por un espacio simple\n");
    printf("Seleccione una figura geométrica:\n");
    printf("1. Triángulo\n2. Paralelogramo\n3. Cuadrado\n4. Rectángulo\n");
    printf("5. Rombo\n6. Trapecio\n7. Círculo\n8. Polígono Regular\n");
    printf("9. Cubo\n10. Cuboide\n11. Cilindro\n12. Esfera\n13. Cono\n");
    printf("Ingrese su opción: ");
}

int leerOpcion() {
    int opcion;
    scanf("%d", &opcion);
    return opcion;
}

void mostrarResultados(const char *figura, double resultado1, double resultado2) {
    printf("Resultados para %s:\n", figura);
    printf("Área/Perímetro o Superficie/Volumen: %.2f, %.2f\n", resultado1, resultado2);
}

int validarUsuario(char *usuario, char *clave) {
    FILE *file = fopen("usuario.txt", "r");
    if (file == NULL) {
        printf("Error: no se pudo abrir el archivo de usuarios.\n");
        return 0;
    }

    char linea[100];
    while (fgets(linea, sizeof(linea), file)) {
        char u[50], c[50];
        sscanf(linea, "%s %s", u, c);  
        if (strcmp(u, usuario) == 0 && strcmp(c, clave) == 0) {
            fclose(file);
            return 1; 
        }
    }
    fclose(file);
    return 0;  
}


void registrarEvento(const char *usuario, const char *accion) {
    FILE *bitacora = fopen("bitacora.txt", "a"); 
    if (bitacora == NULL) {
        perror("Error al abrir el archivo de bitácora");
        return;
    }

    time_t t = time(NULL);
    struct tm *tm_info = localtime(&t);
    char fecha[11]; 
    strftime(fecha, sizeof(fecha), "%Y/%m/%d", tm_info);

    fprintf(bitacora, "%s: %s – %s\n", fecha, usuario, accion);
    fclose(bitacora);
}