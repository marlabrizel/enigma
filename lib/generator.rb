class Generator
  #calculate random 5 digit number
  #call this the key
  #make key accessible to other classes
attr_accessor :key

  def initialize
    @key = generate_key
  end

  def generate_key
    (rand(89999) + 10000).to_s
  end

end

if __FILE__ == $0
 encrypt_key = Generator.new.generate_key
 puts encrypt_key
end

# Each message uses a unique encryption key
# The key is five digits, like 41521
# The first two digits of the key are the "A" rotation (41)
# The second and third digits of the key are the "B" rotation (15)
# The third and fourth digits of the key are the "C" rotation (52)
# The fourth and fifth digits of the key are the "D" rotation (21)
