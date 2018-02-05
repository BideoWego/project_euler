function evenFibonacciNumbers() {
  let a = 1;
  let b = 2;
  let sum = 2;

  while (a < 4000000) {
    let c = a + b;
    if (c % 2 === 0) {
      sum += c;
    }
    a = b;
    b = c;
  }

  return sum;
}

console.log('Sum of all even fibonacci numbers below 4 million is:');
console.log(evenFibonacciNumbers());
