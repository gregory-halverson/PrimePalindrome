def is_prime(n)
  for i in 2..(n / 2)
    if (n % i) == 0
      return false
    end
  end

  return true
end

def is_palindrome(s)
  return s.to_s.reverse == s.to_s
end

primes = []

for i in 3..1000
  if is_prime(i)
    primes.push(i)
  end
end

largest_palindrome = 0

for prime in primes
  if is_palindrome(prime)
    largest_palindrome = prime
  end
end

puts largest_palindrome