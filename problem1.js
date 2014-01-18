#!/usr/local/bin/node

function multiples_of_3_5(cap) {
  var sum = 0;
  for ( var x = 0; x < cap; x++ ) {
    if(x % 3 == 0) { sum += x; }
    else if(x % 5 == 0) { sum += x; }
  }
  console.log(sum);
}

multiples_of_3_5(1000);

