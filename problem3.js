#! /usr/bin/node

function largest_prime_factor(num) {

  var original = num
  var factors = [];
  var largestFactor = 0;

  //brute force this
  for (var x = 2; (x*x) < original; x++) {
    if ( original % x == 0 ) {
      factors[0] = x;
      factors[1] = original/x;

      for (var y = 0; y < 2; y++ ) {
        console.log(factors);
        var isPrime = true;
        for ( var z = 2; (z*z) < factors[y]; z++) {
          if ( factors[y] % z == 0 ) {
            isPrime = false;
            break;
          }
        }
        if ( isPrime === true && factors[y] > largestFactor ) {
          console.log(factors[y]);
          largestFactor = factors[y];
        }
      }
    }
  }
  return largestFactor;
}
//var sum = largest_prime_factor(13195);
//29
var factor = largest_prime_factor(600851475143);
console.log(factor);

console.log(600851475143/sum);

