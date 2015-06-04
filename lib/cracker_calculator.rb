class CrackerCalculator

  attr_reader :today

  def initialize(today_str)
    @today = today_str
  end

  def a_offset
    date_squared[-4]
  end

  def b_offset
    date_squared[-3]
  end

  def c_offset
    date_squared[-2]
  end

  def d_offset
    date_squared[-1]
  end

  def e
    5
  end

  def n
    14
  end

  def d
    4
  end

  def period
    38
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
