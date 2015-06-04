require '../lib/generator'
require 'pry'

class Calculator

  attr_reader :today
  attr_accessor :key

  def initialize(today_str, key)
    @today = today_str
    @key = key
  end

  def a_final
    a_rotation = @key[0..1]
    a_offset = date_squared[-4]
    a_rotation.to_i + a_offset.to_i
  end

  def b_final
    b_rotation = @key[1..2]
    b_offset = date_squared[-3]
    b_rotation.to_i + b_offset.to_i
  end

  def c_final
    c_rotation = @key[2..3]
    c_offset = date_squared[-2]
    c_rotation.to_i + c_offset.to_i
  end

  def d_final
    d_rotation = @key[3..4]
    d_offset = date_squared[-1]
    d_rotation.to_i + d_offset.to_i
  end

  private

  def date_squared
    ((@today.to_i) ** 2).to_s
  end

end

# so, what if you created an array where each two of the key values got reduced
# into a single value (the key part of the computation)
# and another array where you took the date, reversed it.
#
# Jed Schneider [1:30 PM]
# and zipped those two together?

if __FILE__ == $0
 a_offset = Calculator.new(@today, Generator.new.generate_key).a_final
 puts a_offset
 b_offset = Calculator.new(@today, Generator.new.generate_key).b_final
 puts b_offset
 c_offset = Calculator.new(@today, Generator.new.generate_key).c_final
 puts c_offset
 d_offset = Calculator.new(@today, Generator.new.generate_key).d_final
 puts d_offset
end

# From your runner, create an instance of an offset calculator
# Pass the current date and the generated key into the offset calculator
# Write tests and implementation around the idea of being able to pass in the
# date and key, then query the A, B, C, and D final rotations
