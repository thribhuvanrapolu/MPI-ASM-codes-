#include<stdio.h>
typedef union{
	float x;
	int p;
}floatVar;
int main()
{
	floatVar f;
	int  i, a[32];
	float f1;
	printf("\n size of float variable is %ld", sizeof(float));
	printf("\n Enter the value of x:");
	scanf("%f",&f.x);
        f1=f.x;
	for(i=0;i<32;i++){ a[i]=f.p&1; f.p=f.p>>1; }
	printf("Binary Values of %f is:",f1);
	for(i=31;i>=0;i--){
		printf("%d", a[i]);
	}
	printf("\n");
return 0;
}
