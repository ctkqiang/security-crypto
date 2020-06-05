require "digest"

print "{Input ::: }"

input = gets.chomp
puts "User Input: #{input}"


print("Calculated Hashes SHA1: " )
puts Digest::SHA1.hexdigest "#{input}"

print("Calculated Hashes SHA2: " )
puts Digest::SHA2.hexdigest "#{input}"

print("Calculated Hashes SHA256: " )
puts Digest::SHA256.hexdigest "#{input}"

print("Calculated Hashes SHA384: " )
puts Digest::SHA384.hexdigest "#{input}"

print("Calculated Hashes SHA512: " )
puts Digest::SHA512.hexdigest "#{input}"

