# credit: worked through https://gist.github.com/loganhasson/8937903
# to understand and play around with the algorithm 
def prime?(integer)
    if integer <= 2
      false
    end
    sieve_algorithm(integer).include?(integer)
end

def sieve_algorithm(max)
 #creates array of all numbers between 0 and max number
  primes = (0..max).to_a
  primes [0] = nil
  primes [1] = nil
# then an iteration goes through to remove (make nil) all
# non-prime numbers
  primes.each do |p|
    next unless p #skips if nil
    break if p * p > max #this because only need to go to sqrt of max
    (p * p).step(max,p) { |m| primes[m] = nil }
  end
  primes.compact
end
