/*
Multiples of 3 and 5
Problem 1
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
 */

#include <stdio.h>

int main(int argc, const char * argv[]) {
	puts("----");

	int low = 0;
	int high = 1000;
	int sum = 0;

	while (low < high) {
		int multipleOf3 = (low % 3 == 0);
		int multipleOf5 = (low % 5 == 0);
		if (multipleOf3 || multipleOf5) {
			sum += low;
		}
		low++;
	}
	printf("Sum of all multiples of 3 and 5 between 0 and 1000 is: %d \n", sum);
	puts("----");

	return 0;
}
