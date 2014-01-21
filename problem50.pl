#! /usr/bin/env perl
use strict;
use warnings;
use List::Util qw(sum);

sub find_primes_til {
  my ($cap) = @_;
  warn "Finding primes";
  my @primes = ();

  @primes = (1) x $cap;

  $primes[0] = 0;
  $primes[1] = 0;

  my @actual_prime_numbers = ();

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

sub find_longest_consecutive_sum {
  my $below = shift;

  my @primes = @_;
  my %primes = map { $_ => 1 } @primes;

  my $sets = {};

  for (my $y = 0; $y <= scalar @primes; $y++) {
    my @current_set = ();
    for (my $x = $y; $x <= scalar @primes; $x++) {
      push @current_set, $primes[$x];
      my $sum = sum @current_set;

      if ($sum > $below) {
        last;
      }

      if ( $sum < $below && $primes{$sum} ) {
        $sets->{scalar @current_set} = [$sum, \@current_set];
      }
    }
  }

  my $top = (sort { $b <=> $a } keys %$sets)[0];
  return $sets->{$top}[0];
}

my @prime_table = find_primes_til(1000000);
my $longest = find_longest_consecutive_sum(1000000,@prime_table);
# 997651
warn $longest;
