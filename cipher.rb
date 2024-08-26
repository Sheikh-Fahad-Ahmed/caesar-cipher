
def caesar_cipher(string, key)
  ascii_code = []
  string.each_byte do |c|
    if c >= 65 && c <=90
      c += key
      if c > 90
        c -= 26
      end
    elsif c >= 97 && c <= 122
      c += key
      if c > 122
        c-= 26
      end
    end
    ascii_code.push(c)
  end
  ascii_code.pack('c*')
end

puts caesar_cipher("What a string!", 5)