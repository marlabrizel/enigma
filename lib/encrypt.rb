require '../lib/calculator'
require '../lib/generator'
require '../lib/encryptor'
require '../lib/decryptor'

today = Time.new.strftime("%d%m%y")
key = Generator.new.generate_key
calc = Calculator.new(today, key)

message = File.read('message.txt')

encryptor = Encryptor.new(calc)
encryptor.encrypt(message)

puts "Created #{ARGV[1]} with the key #{key} and date #{today}"

# Pull the specified output filename from the command
# line arguments and put it into the string output
# Get today's date, format it, and output it in the
# string
# Generate a random number as the key and output
# it in the string

#can use ARGV[0] to pull message file from command line input
