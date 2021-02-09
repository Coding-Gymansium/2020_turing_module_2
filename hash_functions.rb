require 'digest'
require 'benchmark'

# Brian's lesson examples 
puts "Brian examples"

puts Digest::SHA256.hexdigest 'Hersheys'
puts Digest::MD5.hexdigest 'Hersheys'
puts Digest::MD5.hexdigest 'HerSheys'

def hash_me_1(snack)
  snack.length % 6
end

def hash_me_2(snack)
  hash1 = (snack.length * 13) % 7
  hash2 = (snack.length * 2) % 6
  ((hash1 + hash2) % 7).to_s + hash1.to_s + hash2.to_s;
end

puts hash_me_1('Hersheys')
puts hash_me_2('Hersheys')

## User password
puts Digest::MD5.hexdigest 'password123'
## User Table
# username | password_digest
# brian    | 482c811da5d5b4bc6d497ffa98491e38

# lengths
x = "c2ce36d9c5b6cbd3d29668cb86ff0579c8be377cdad0db57af34a8ee69fa3fc9"
z = "cf3a9125a905d8437d4c4a053afd2fa8"
puts x.length
puts z.length

## Travis 1
puts "Travis' 1"

snack = "Chocolate"
Benchmark.measure { Digest::MD5.hexdigest snack }

## Hash's 1
puts "Hash's 1"

starting = Time.now
puts Digest::MD5.hexdigest ('abc' * 1000)
ending = Time.now
elapsed = ending - starting
puts elapsed
starting = Time.now
puts Digest::SHA256.hexdigest ('abc' * 1000)
ending = Time.now
elapsed = ending - starting
puts elapsed

## Hash's 2
puts "Hash's 2"

total_counter = 0
10.times do
  total_counter += Benchmark.measure { Digest::MD5.hexdigest ('abc' * 1000) }.total
end
puts total_counter
total_counter = 0
10.times do
  total_counter += Benchmark.measure { Digest::SHA256.hexdigest ('abc' * 1000) }.total
end
puts total_counter
