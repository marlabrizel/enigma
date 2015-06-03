require 'minitest/autorun'
require 'minitest/pride'
require '../lib/generator'

class GeneratorTest < Minitest::Test

  def test_it_generates_a_five_digit_key
    assert_equal 5, Generator.new.key.length
  end

  def test_key_contains_only_numbers
    key = Generator.new.key
    key.chars.each do |element|
      assert(element.to_i >= 0 && element.to_i < 10)
    end
  end

  def test_a_new_key_gets_generated_each_time
    key1 = Generator.new.key
    key2 = Generator.new.key
    refute_equal key1, key2
  end

end
