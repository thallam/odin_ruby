class Cipher
# don't forget to deal with capitals
# or letters that key past Z

def initialize(message, shift )
  @message = message
  @shift = shift

  @key = {} #candidate for class variable
  ('a'..'z').each {|c| @key[c.ord] = c}
  ('A'..'Z').each {|c| @key[c.ord] = c}
end

def to_s
  p encode(@message).join
end

def encode(message)
  encoded_message = []
  encoded_message = message.each_char.map do |l|
    case
      when l.ord.between?(97, 122) then shift(l, 122) #lowecase
      when l.ord.between?(65, 90) then shift(l, 90) #upercase
      else l #not a letter
    end
  end
end

def shift(letter, z_value)
  if (letter.ord + @shift) <= z_value
    @key[letter.ord + @shift]
  else
    @key[letter.ord + @shift - 26]
  end
end

end

def run
puts "Please input your message"
message = gets.chomp.strip
puts "Please input your key"
shift = gets.chomp.to_i
code = Cipher.new(message,shift)
code.to_s
end


run if __FILE__ == $0
