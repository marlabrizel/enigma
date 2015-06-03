require 'minitest/autorun'
require 'minitest/pride'
require '../lib/decryptor'

class DecryptorTest < Minitest::Test

  def test_it_decrypts_a_message
    today = "060215"
    key = "12345"
    rotations = Calculator.new(today, key)
    decryptor = Decryptor.new(rotations)
    assert_equal "message", decryptor.decrypt("43p3s5b")
  end

end
