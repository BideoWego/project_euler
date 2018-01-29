#include <stdio.h>

int main(int argc, const char * argv[]) {
  int foo = 1;
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

  return 0;
}
