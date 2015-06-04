require '../lib/calculator'
require '../lib/generator'
require '../lib/encryptor'
require '../lib/decryptor'
require '../lib/incoming_file'
require '../lib/outgoing_file'

today = Time.new.strftime("%d%m%y")
key = Generator.new.generate_key
calc = Calculator.new(today, key)

message = IncomingFile.new(ARGV[0]).get_message
encryptor = Encryptor.new(calc)
encrypted_message = encryptor.encrypt(message)
OutgoingFile.new(ARGV[1]).encrypt_file(encrypted_message)
puts "Created #{ARGV[1]} with the key #{key} and date #{today}"
