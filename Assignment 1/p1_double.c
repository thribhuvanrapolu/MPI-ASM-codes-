#include<stdio.h>
typedef union{
	double x;
	int p;
}doubleVar;
int main()
{
	doubleVar d;
	int  i, a[64];
	double d1;
	printf("\n size of double variable is %ld", sizeof(double));
	printf("\n Enter the value of x:");
	scanf("%f",&d.x);
        d1=d.x;             
	for(i=0;i<64;i++){ a[i]=d.p&1; d.p=d.p>>1; }
	printf("Binary Values of %f is:",d1);
	for(i=63;i>=0;i--){
		printf("%d", a[i]);
	}
	printf("\n");
return 0;
}
