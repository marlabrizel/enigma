require '../lib/incoming_file'
require 'pry'

class OutgoingFile

  attr_accessor :encrypted_file

  def initialize(encrypted_file)
    @encrypted_file = encrypted_file
  end

  def encrypt_file(encrypted_message)
    writer = File.open(@encrypted_file, 'w')
    writer.write(encrypted_message)
    writer.close
  end

end
