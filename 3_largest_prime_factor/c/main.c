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
