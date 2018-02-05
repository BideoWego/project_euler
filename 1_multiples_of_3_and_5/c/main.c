#include <stdio.h>

int main(int argc, const char * argv[]) {
  int sum = 0;

  for (int i = 0; i < 1000; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }

  printf("Sum of all multiples of 3 and 5 between 0 and 1000 is: %d \n", sum);

  return 0;
}
