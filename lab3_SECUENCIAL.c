#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(){
    int numero,i,*arreglo;
    float tiempoTotal,tiempoInicio, tiempoFinal;
    arreglo = (int *)malloc(536870912*sizeof(int) );
    tiempoInicio=clock();
 	for (i=0;i<536870912;i++){
        numero = rand () % 5000;
        arreglo[i]=numero;

 	}
    tiempoFinal=clock();
    free(arreglo);
    tiempoTotal=(tiempoFinal-tiempoInicio)/(double) CLOCKS_PER_SEC;
    printf("tiempo total de ejecucion %f\n",tiempoTotal);
    return 0;
}

