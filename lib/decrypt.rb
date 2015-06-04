require '../lib/calculator'
require '../lib/encryptor'
require '../lib/decryptor'
require '../lib/incoming_file'
require '../lib/outgoing_file'

date = ARGV[3]
key = ARGV[2]
calc = Calculator.new(date, key)

message = IncomingFile.new(ARGV[0]).get_message
decryptor = Decryptor.new(calc)
decrypted_message = decryptor.decrypt(message)
OutgoingFile.new(ARGV[1]).encrypt_file(decrypted_message)
puts "Created #{ARGV[1]} with the key #{key} and date #{date}"
