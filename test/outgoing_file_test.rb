require 'minitest/autorun'
require 'minitest/pride'
require '../lib/outgoing_file'

class OutgoingFileTest < Minitest::Test

  def test_it_puts_encrypted_message_into_file
    encrypted_message = "43p3s5b"
    outgoing = OutgoingFile.new("file.txt")
    outgoing.create_file(encrypted_message)
    assert_equal encrypted_message, "43p3s5b"
  end

end
