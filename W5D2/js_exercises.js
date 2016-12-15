function isPrime(n) {
  for (let i = 2; i < n; i++) {
    if (n % i === 0)
      return false;
  }
  return true;
}

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));
