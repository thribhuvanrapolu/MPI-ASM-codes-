#include <stdio.h>
#include<inttypes.h>

int64_t modeN(int64_t [],uint64_t);

int main(){
    //assume we are giving sorted array
    long int a[]={5, 3, 4, 9, 16, 16, 16, 27, 27, 27, 27};
    printf("Max element of array is %d\n",modeN(a,11));

    return 0;
}