#! /usr/bin/env perl

use strict;
use warnings; 

sub largest_prime_factor {
  my $original = shift;
  my @factors = ();
  my $largestFactor = 0;

  for (my $x = 2; ($x**2) < $original; $x++) {
    if ( $original % $x == 0 ) {

      $factors[0] = $x;
      $factors[1] = $original/$x;

      for my $fact(@factors) {
        my $isPrime = 1;
        for ( my $z = 2; ($z**2) < $fact; $z++) {
          if ( $fact % $z == 0 ) {
            $isPrime = 0;
            last;
          }
        }
        if ( $isPrime && $fact > $largestFactor ) {
          $largestFactor = $fact;
        }
      }
    }
  }
  return $largestFactor;
}
my $factor = largest_prime_factor(600851475143);
warn $factor;

