#include <stdio.h>
#include<inttypes.h>

int64_t maxN(int64_t [],uint64_t);
int64_t minN(int64_t [],uint64_t);

int main(){
    long int a[]={10,20,90,2250,60,12340,77,99,12,-4,0,56};
    printf("Max element of array is %d\n",maxN(a,12));
    printf("Min element of array is %d\n",minN(a,12));

    return 0;
}