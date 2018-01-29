/*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
 */

#include <stdio.h>

int main(int argc, const char * argv[]) {
  long n = 600851475143;
  int prime_factor;
  int i = 2;

  while (n > 1) {
    while (n % i == 0) {
      prime_factor = i;
      n /= i;
    }
    i++;
  }

  printf("The largest prime factor is: %d\n", prime_factor);

  return 0;
}
