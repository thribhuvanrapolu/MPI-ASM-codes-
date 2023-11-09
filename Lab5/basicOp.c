#include<stdio.h>
#include<inttypes.h>
int64_t basicOp(int64_t *, int64_t *);
int main()
{


    long int x[2], y[6];
    x[0]=50,x[1]=15;
    basicOp(x,y);
    printf("Result of Addition is: %ld\n",y[0]);
    printf("Result of Subtraction is: %ld\n",y[1]);
    printf("Result of Multiplication is: %ld %ld\n", y[2],y[3]);
    printf("Result of Division,Quotient is: %ld and remainder is: %ld",y[4],y[5]);
    return 0;
}