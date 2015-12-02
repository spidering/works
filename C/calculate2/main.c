#include<stdio.h>
int main() {
    
	int a, b, d;
	float c;

	printf("a=");
	scanf("%d", &a);
	printf("b=");
	scanf("%d", &b);

	c = (float) a / (float)b;
	d = a % b;

	printf("a/b=%f\n",c);
	printf("a%%b=%d\n",d);

}
