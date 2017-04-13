#include<stdio.h>

double variance(int n, double x[]);

int main(void) {

	double array[10] = {5.5, 3.4, 7.7, 3.2, 9.1, 113.5, .125, 33.2, 93.2, .00001};
	int number = 10;


	double answer = variance(number, array);

	printf("Variance is: %f\n", answer);

	return 0;

}

/* This is what variance does, i.e. :

	double sum1, sum2;
	int i = 0;

	while(i < n-1) {

	sum1 = sum1 + (x[i] * x[i]);
	sum2 = sum2 + x[i];

	}
	
	sum1 = sum1 / n;
	sum2 = sum2 / n;

	sum2 = sum2 * sum2;

	return sum1 - sum2;

}*/

	
