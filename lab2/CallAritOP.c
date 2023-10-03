#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

int64_t addTwo(int64_t,int64_t);
int64_t subTwo(int64_t,int64_t);
int64_t mulTwo(int64_t,int64_t);
int64_t divTwo(int64_t,int64_t);


int main()
{
    long int a=10,b=2;
    printf("\n Result of addition is %ld \n",addTwo(a,b));
    printf("\n Result of subtraction is %ld \n",subTwo(a,b));
    printf("\n Result of multiplication is %ld \n",mulTwo(a,b));
    printf("\n Result of division is %ld \n",divTwo(a,b));
    return 0;
}   
