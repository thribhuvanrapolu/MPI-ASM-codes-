#include <stdio.h>
#include<inttypes.h>

int64_t Even(int64_t [],uint64_t);

int main(){
    long int a[]={10,20,90,2250,60,12340,77,99,12,-4,0,56};
    printf("Total Even Numbers is %d\n",Even(a,12));

    return 0;
}