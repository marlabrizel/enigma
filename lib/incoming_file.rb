class IncomingFile

  attr_accessor :passed_file

  def initialize(passed_file)
    @passed_file = passed_file
  end

  def get_message
    File.read(@passed_file)
  end

end
