function fizzBuzz(array) {
  let result = [];

  for (let i = 0; i < array.length; i++) {
    if ((array[i] % 3 === 0) && (array[i] % 5 === 0))
      continue;
    else if ((array[i] % 3 === 0) || (array[i] % 5 === 0))
      result.push(array[i]);
  }
  return result;
}

// console.log(fizzBuzz([1,2,3,4,5,6,7,8,15,10]));

function isPrime(n) {
  for (let i = 2; i < n; i++) {
    if (n % i === 0)
      return false;
  }
  return true;
}

// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));

function firstNPrimes(n) {
  let result = [];
  for (let i = 2; result.length < n; i++) {
    if (isPrime(i))
      result.push(i);
  }
  return result;
}

// console.log(firstNPrimes(5));
// 
// function sumOfNPrimes(n) {
//   let primes = firstNPrimes(n);
//
//   primes.reduce(function(a, b) {
//     return a + b;
//   }, 0);
// }
//
// console.log(sumOfNPrimes(0));
// console.log(sumOfNPrimes(1));
// console.log(sumOfNPrimes(4));
