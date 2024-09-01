# frozen_string_literal: true

def cipher(string, key)
  ascii_code = []
  string.each_byte do |c|
    if c >= 65 && c <= 90
      c += key
      c -= 26 if c > 90
    elsif c >= 97 && c <= 122
      c += key
      c -= 26 if c > 122
    end
    ascii_code.push(c)
  end
  ascii_code.pack('c*')
end

puts cipher('What a string!', 5)
