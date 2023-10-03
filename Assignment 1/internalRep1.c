#include<stdio.h>
int main()
{
	int x, x1, i, a[32];
	printf("\n size of integer variable is %ld", sizeof(int)); 
	printf("\n Enter the value of x:");
	scanf("%d",&x);
	x1=x;
	for(i=0;i<32;i++){ a[i]=x&1; x=x>>1; }
	printf("Binary Values of %d is:", x1);
	for(i=31;i>=0;i--){
		printf("%d", a[i]);
	}
	printf("\n");
return 0;
}
