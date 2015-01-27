#!/usr/local/bin/node

function even_fib(p1, p2, cap) {
  var c = p1 + p2;
  var a = c % 2 == 0 ? c : c == 3 ? p2 : 0;
  if (c < cap ) {
   return a + even_fib(p2, c, cap);
  }
  return a;
}

var sum = even_fib(1,2,4000000);
console.log(sum);

// 4613732
