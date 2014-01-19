#! /usr/bin/env perl
use strict;
use warnings;

sub find_primes_til {
  my ($cap) = @_;

  my @primes = ();

  @primes = (1) x $cap;

  $primes[0] = 0;
  $primes[1] = 1;

  my @actual_prime_numbers = (1);

  # Number theory thingy called Sieve of Eratosthenes
  for (my $x = 2; $x <= $cap; $x++) {
    if ( $primes[$x] ) {
      for ( my $y = 2; ($y * $x) <= $cap; $y++ ) {
        $primes[$y * $x] = 0;
      }
    }
    push @actual_prime_numbers, $x if $primes[$x];
  }
  return @actual_prime_numbers;
}

find_longest_consecutive_sum {
  my @primes = @_;

  my $sum = $primes[0]; # prime the pump, get it!hahah
  for(my $x = 1; $x < @primes; $x++) {
    if ( $primes[$x] 
    $sum += $primes[$x];       
  }
}

my @prime_table = find_primes_til(100);
use Data::Dumper; warn Dumper \@prime_table;
