#include <stdio.h>

int main(int argc, const char * argv[]) {
  int a = 1;
  int b = 2;
  int sum = 2;

  while (a < 4000000) {
    int c = a + b;
    if (c % 2 == 0) {
      sum += c;
    }
    a = b;
    b = c;
  }


  printf("Sum of all even fibonacci numbers below 4 million is: %d \n", sum);

  return 0;
}
