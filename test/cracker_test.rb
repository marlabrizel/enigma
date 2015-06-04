require 'minitest/autorun'
require 'minitest/pride'
require '../lib/cracker'

class CrackerTest < Minitest::Test

  def test_it_cracks_a_message
    today = "040615"
    rotations = CrackerCalculator.new(today)
    cracker = Cracker.new(rotations)
    assert_equal "how much wood could a woodchuck chuck if a woodchuck could chuck wood ..end..", cracker.crack("17uj6aatrcm0xqa0b4bjuqu08watbvijw0so4qgrrt8887bo1aawrvm65w8o1aawrcm0xq9ky6bks")
  end

end
