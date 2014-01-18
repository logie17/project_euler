#!/usr/local/bin/node

var sum = 0;
function even_fib(cap, prev) {
  var next;
  if ( prev.length ) {
    next = prev[0] + prev[1];
    prev = [prev[1], next];
  } else {
    next = 0;
    prev = [0,1]
  }

  if ( next < cap ) {
    if ( next % 2 == 0 ) 
      sum += next;
    return even_fib(cap,prev);
  } else {
    return sum;
  }
}

var sum = even_fib(4000000,[]);
console.log(sum);

// 4613732
