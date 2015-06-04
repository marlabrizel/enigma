require '../lib/cracker_calculator'

class Cracker

  def initialize(calc)
    @calc = calc
    @second_rotation =   [3, 33, 4, 9, 9]
  end

  def crack(message)
    @message = message
    if message.length % 4 == 0
      crack_it(1, -1)

    elsif message.length % 4 == 1
      crack_it(0)

    elsif message.length % 4 == 2
        crack_it(4)

    elsif message.length % 4 == 3
        crack_it(3)
    end
  end

  def crack_it(rotate_factor, split_piece=(-2))
  split_message = @message.split('').each_slice(4).to_a
  #here is the array of arrays
  focus = split_message[split_piece]
  results = []
  focus.each_with_index do |char, index|
    rotated = @second_rotation.rotate(rotate_factor)
    # rotated = @calc.send(second_rotation_for_index(index))
    #rotated = map this to the array [., ., e, n]
    finished_rotation = []
    rotated.each do |num|
      results.push << char_map.key((@calc.send(rotation_for_index(index)).to_i - num) % 39)
    end
    results.join('')
    end
  end

  def second_rotation_for_index(idx)
    [5, 14, 4, 38, 38][idx]
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
