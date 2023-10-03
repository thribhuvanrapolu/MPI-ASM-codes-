#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

double addTwoR(double *,double *);
double subTwoR(double *,double *);
// double mulTwo(double *,double *);
// double divTwo(double *,double *);


int main()
{
    double a=2.5,b=3.4;
    printf("\n Result of addition is %lf \n",addTwoR(&a,&b));
    printf("\n Result of subtraction is %lf \n",subTwoR(&a,&b));
    // printf("\n Result of multiplication is %lf \n",mulTwo(&a,&b));
    // printf("\n Result of division is %lf \n",divTwo(&a,&b));
    return 0;
}   
