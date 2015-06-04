require '../lib/cracker_calculator'

class Cracker

  def initialize(calc)
    @calc = calc
  end

  def crack(message)
    if message.length % 4 == 0
      split_message = message.split('').each_slice(4).to_a
      #here is the array of arrays
      focus = split_message[-1]
      results = []
      focus.each_with_index do |char, index|
        rotated = focus.rotate(1)
        value = rotated.pop
        value = @calc.send(second_rotation_for_index(index))
        #value = map this to the array [n, d, ., .]
        rotate = (@calc.send(rotation_for_index(index)).to_i - value) % 39
        results.push char_map.key(rotate)
      end

    elsif message.length % 4 == 1
      split_message = message.split('').each_slice(4).to_a
      #here is the array of arrays
      focus = split_message[-2]
      results = []
      focus.each_with_index do |char, index|
        value = focus.pop
        value = @calc.send(second_rotation_for_index(index))
        #value = map this to the array [e, n, d, .]
        rotate = (@calc.send(rotation_for_index(index)).to_i - value) % 39
        results.push char_map.key(rotate)
      end

    elsif message.length % 4 == 2
      split_message = message.split('').each_slice(4).to_a
      #here is the array of arrays
      focus = split_message[-2]
      results = []
      focus.each_with_index do |char, index|
        rotated = focus.rotate(4)
        value = rotated.pop
        value = @calc.send(second_rotation_for_index(index))
        #value = map this to the array [., e, n, d]
        rotate = (@calc.send(rotation_for_index(index)).to_i - value) % 39
        results.push char_map.key(rotate)
      end

    elsif message.length % 4 == 3
      split_message = message.split('').each_slice(4).to_a
      #here is the array of arrays
      focus = split_message[-2]
      results = []
      focus.each_with_index do |char, index|
        rotated = focus.rotate(3)
        value = rotated.pop
        value = @calc.send(second_rotation_for_index(index))
        #value = map this to the array [., ., e, n]
        rotate = (@calc.send(rotation_for_index(index)).to_i - value) % 39
        results.push char_map.key(rotate)
      end

      #map focus[0] to the output of h.key((a_offset - 14) % 39)
      # map focus[1] to the output of h.key((b_offset - 4) % 39)
      # map focus[2] to the output of h.key((c_offset - 38) % 39)
      # map focus[3] to the output of h.key((d_offset - 38) % 39)
      #convert array back to a string then to integers
    end
  end

  def second_rotation_for_index(idx)
    ["e", "n", "d", "period", "period"][idx]
    #be sure to index in here with a range to pop extra element
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
    ["a_offset", "b_offset", "c_offset", "d_offset"][idx]
  end

end
