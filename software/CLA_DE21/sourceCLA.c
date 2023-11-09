#include "stdio.h"
#include "io.h"
#include "system.h"


int add_funct(int a, int b, int result){
	IOWR(CL_ADDER_0_BASE, 0, a);
	IOWR(CL_ADDER_0_BASE, 1, b);
	result = IORD(CL_ADDER_0_BASE, 1);
	return result;
}
int main(){
	int a = 9, b = 10, c = 11, y, d;
	y = add_funct(a, b, y);
	d = add_funct(a, c, d);
	printf("y = %d + %d = %d \n", a, b, y);
	printf("y = %d + %d = %d \n", a, c, d);
	return 0;
}
