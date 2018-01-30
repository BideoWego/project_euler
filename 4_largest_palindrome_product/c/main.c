#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdbool.h>

bool is_palindrome(n) {
  float l = log10(n);
  int digits = ceil(l);
  int half = digits / 2;

  int left = n;
  int right = n;
  bool is_p = true;

  for (int i = 0; i < half; i++) {
    digits--;

    int r = right % 10;
    int l = left / (pow(10, digits));

    if (r != l) {
      is_p = false;
      break;
    }

    right /= 10;
    left -= l * (pow(10, digits));
  }


  return is_p;
}

int main(int argc, const char * argv[]) {
  int digits = 3;
  int max = pow(10, digits) - 1;
  int min = pow(10, digits - 1);

  int max_palindrome = -1;
  for (int i = max; i >= min; i--) {
    for (int j = max; j >= min; j--) {
      int product = i * j;
      bool is_p = is_palindrome(product);
      if (is_p) {
        max_palindrome = product > max_palindrome ? product : max_palindrome;
      }
    }
  }

  printf("The largest palindrome made from the product of two 3-digit numbers is: %d\n", max_palindrome);

  return 0;
}
