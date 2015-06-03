require '../lib/calculator'
require'pry'

class Encryptor

  attr_reader :char_map

  def initialize(calc)
    @calc = calc
    #this is an instance of the Calculator class
  end

  def encrypt(message)
    split_message = message.split('').each_slice(4).to_a
    out_message = split_message.map do |item|
      res = []
      item.each_with_index do |char, index|
        v = char_map.fetch(char) # => value
        # first evaaaa metaprogramming!!!!
        r = (v + @calc.send(rotation_for_index(index))) % 39
        res.push char_map.key(r)
      end
      puts "res", res
      res.join("")
    end
    out_message.join("")
    #split message into arrays of four characters- each_slice(4)
    #use hash.fetch to look up the value for each letter in the array - probably need
    # "message" => [["m", "e", "s", "s"], ["a", "g", "e"]] => [[]]
    # another enumerable to iterate through
    #add the lookup value to the correct x_final
    # "m" => 13 + a_final(2) = 15
    #use hash.key(summed_value) to get new key
    # hash.key(15) => "o"
    # push new key into encrypted array
  end

  protected

  def char_map
    {
      "a" => 1,
      "b" => 2,
      "c" => 3,
      "d" => 4,
      "e" => 5,
      "f" => 6,
      "g" => 7,
      "h" => 8,
      "i" => 9,
      "j" => 10,
      "k" => 11,
      "l" => 12,
      "m" => 13,
      "n" => 14,
      "o" => 15,
      "p" => 16,
      "q" => 17,
      "r" => 18,
      "s" => 19,
      "t" => 20,
      "u" => 21,
      "v" => 22,
      "w" => 23,
      "x" => 24,
      "y" => 25,
      "z" => 26,
      "0" => 27,
      "1" => 28,
      "2" => 29,
      "3" => 30,
      "4" => 31,
      "5" => 32,
      "6" => 33,
      "7" => 34,
      "8" => 35,
      "9" => 36,
      " " => 37,
      "." => 38,
      "," => 39
      }
  end


  def rotation_for_index(idx)
    ["a_final", "b_final", "c_final", "d_final"][idx]
  end

end

# divide message into arrays of four
# The first character is rotated forward by a_final - char[0]
# The second character is rotated forward by b_final - char[1]
# The third character is rotated forward by c_final - char[2]
# The fourth character is rotated forward by d_final - char[3]

# Create an encryptor object in your runner
# What information would the encryptor need to be "setup" and
# ready to encrypt messages? Pass that in.
# Call an encrypt method and pass in a string message.
# Get back the encrypted version.
