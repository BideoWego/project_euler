function multiplesOf3And5() {
  let sum = 0;

  for (let i = 0; i < 1000; i++) {
    if (i % 3 === 0 || i % 5 === 0) {
      sum += i;
    }
  }

  return sum;
}

console.log('Sum of all multiples of 3 and 5 between 0 and 1000 is:');
console.log(multiplesOf3And5());
