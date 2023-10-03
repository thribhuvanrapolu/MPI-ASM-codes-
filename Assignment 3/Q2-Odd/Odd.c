#include <stdio.h>
#include<inttypes.h>

int64_t Odd(int64_t [],uint64_t);

int main(){
    long int a[]={10,20,90,2250,60,12340,77,99,12,-4,0,56};
    printf("Total Odd Numbers is %d\n",Odd(a,12));

    return 0;
}