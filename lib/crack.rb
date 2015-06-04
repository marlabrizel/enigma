require '../lib/cracker_calculator'
require '../lib/cracker'
require '../lib/incoming_file'
require '../lib/outgoing_file'

date = ARGV[2]
calc = CrackerCalculator.new(date)

message = IncomingFile.new(ARGV[0]).get_message
cracker = Cracker.new(calc)
cracked_message = cracker.crack(message)
OutgoingFile.new(ARGV[1]).encrypt_file(cracked_message)
puts "Created #{ARGV[1]} with the date #{date}"
