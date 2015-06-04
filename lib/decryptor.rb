require '../lib/calculator'
require'pry'

class Decryptor

  attr_reader :char_map

  def initialize(calc)
    @calc = calc
  end

  def decrypt(message)
    split_message = message.split('').each_slice(4).to_a
    out_message = split_message.map do |item|
      results = []
      item.each_with_index do |char, index|
        value = char_map.fetch(char) # => value
        rotate = (value - @calc.send(rotation_for_index(index))) % 39
        results.push char_map.key(rotate)
      end
      # puts "results", results
      results.join("")
    end
    out_message.join("")
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
