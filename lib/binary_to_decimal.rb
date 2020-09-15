# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
binary = Array.new(8) {rand(0..1)}

def binary_to_decimal(binary)
  puts binary.join + "\n"
  a = binary.length
  decimal = 0

  for i in 0...a do
    reverse_index = 7 - i
    num = binary[reverse_index].to_i * 2**i
    decimal +=num
  end
  puts decimal
end

binary_to_decimal(binary)
