require 'prime'
primes = []
Prime.take_while do |n|
  if primes.sum + n < 1000000
    primes.push(n)
  end
end

until Prime.prime?(primes.sum)
  primes.pop
end

puts
puts "Biggest sum of consecutive primes below million: #{primes.sum}"
puts
puts "Primes: #{primes.join(' , ')}"
