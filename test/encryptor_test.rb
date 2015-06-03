require 'minitest/autorun'
require 'minitest/pride'
require '../lib/encryptor'

class EncryptorTest < Minitest::Test

  def test_it_encrypts_a_message
    today = "060215"
    key = "12345"
    rotations = Calculator.new(today, key)
    encryptor = Encryptor.new(rotations)
    assert_equal "43p3s5b", encryptor.encrypt("message")
  end

end
