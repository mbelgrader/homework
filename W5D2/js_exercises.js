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

console.log(fizzBuzz([1,2,3,4,5,6,7,8,15,10]));

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

function sumOfNPrimes(n) {

}

// console.log(sumOfNPrimes(0));
// console.log(sumOfNPrimes(1));
// console.log(sumOfNPrimes(4));
