require 'minitest/autorun'
require 'minitest/pride'
require '../lib/encrypt'

class EncryptTest < Minitest::Test

  def test_key_is_not_nil #combine this with five digits test
    skip
    key1 = Key.new(nil)
    refute key1.key
  end

  def test_key_is_five_digits
    skip
  end

  def test_encrypt_downcases_input
    skip
    enigma = Encrypt.new("Hello ..end..")

    assert_equal

  end

  def test_it_splits_input_into_an_array_of_characters
    skip
    enigma = Encrypt.new("hello")

    assert_equal ["h", "e", "l", "l", "o"], engima.split_string
  end

  def test_it_divides_an_array_into_arrays_of_four
    #give it a string with a length of 12, assert you have three arrays of four
    skip
    enigma = Encrypt.new("I am Marla B")
    enigma.split_string
    assert_equal ["i", " ", "a", "m"] [" ", "m" "a", "r",] ["l", "a", " ", "b"] enigma.divide
  end

  def test_it_sums_rotations_and_offsets #sums the corresponding rotation and offset
    skip
  end
  # unit testing (very granular)
  def test_it_rotates_the_first_element_by_AA
    skip
    enigma = Encrypt.new
    assert_equal
  end

  def test_it_rotates_the_second_element_by_BB
    skip
  end

  def test_it_outputs_encrypted_element_when_processing_is_complete
    skip
    # key =
    # string =
    # assert_equal , encrpyed.
  end

  # sad path
  # - invalid key, should not work

  # def test_it_rotates_the_third_element_by_CC
  #   skip
  # end
  #
  # def test_it_rotates_the_fourth_element_by_DD
  #   skip
  # end




end
