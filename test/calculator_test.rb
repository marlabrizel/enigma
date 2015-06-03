require 'minitest/autorun'
require 'minitest/pride'
require '../lib/calculator'

class CalculatorTest < Minitest::Test

  def test_it_queries_the_right_rotations
    today = "060215"
    key = "12345"
    rotations = Calculator.new(today, key)
    assert_equal 18, rotations.a_final
    assert_equal 25, rotations.b_final
    assert_equal 36, rotations.c_final
    assert_equal 50, rotations.d_final
  end

end
