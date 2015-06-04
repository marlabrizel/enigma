require '../lib/incoming_file'
require 'pry'

class OutgoingFile

  attr_accessor :encrypted_file

  def initialize(encrypted_file)
    @encrypted_file = encrypted_file
  end

  def create_file(encrypted_message)
    writer = File.open(@encrypted_file, 'w')
    writer.write(encrypted_message)
      #make sure you close the file
  end

end
