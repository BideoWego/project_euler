function largestPrimeFactor() {
  let n = 600851475143;
  let primeFactor;
  let i = 2;

  while (n > 1) {
    while (n % i === 0) {
      primeFactor = i;
      n /= i;
    }
    i++;
  }

  return primeFactor;
}

console.log('The largest prime factor is');
console.log(largestPrimeFactor());
