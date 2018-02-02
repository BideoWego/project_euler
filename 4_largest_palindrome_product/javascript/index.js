function isPalindrome(n) {
  const l = Math.log10(n);
  let digits = Math.ceil(l);
  const half = Math.floor(digits / 2);

  let left = n;
  let right = n;
  let isP = true;

  for (let i = 0; i < half; i++) {
    digits--;

    const r = right % 10;
    const l = Math.floor(left / Math.pow(10, digits));

    if (r != l) {
      isP = false;
      break;
    }

    right = Math.floor(right / 10);
    left -= l * Math.pow(10, digits);
  }

  return isP;
}


function largestPalindromeProduct(n) {
  const digits = n;
  const max = Math.pow(10, digits) - 1;
  const min = Math.pow(10, digits - 1);

  let maxPalindrome = -1;
  for (let i = max; i >= min; i--) {
    for (let j = max; j >= min; j--) {
      const product = i * j;
      const isP = isPalindrome(product);
      if (isP) {
        maxPalindrome = product > maxPalindrome ? product : maxPalindrome;
      }
    }
  }

  return maxPalindrome;
}

console.log("The largest palindrome made from the product of two 3-digit numbers is: ")
console.log(largestPalindromeProduct(3));
