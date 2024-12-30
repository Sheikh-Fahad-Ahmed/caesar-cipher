# frozen_string_literal: true


class Cipher
  def cipher(string, key)
    ascii_code = []
    letters = string.chars
    letters.each do |c|
      value = c.ord
      if value >= 65 && value <= 90
        value += key
        value -= 26 if value > 90
      elsif value >= 97 && value <= 122
        value += key
        value -= 26 if value > 122
      end
      ascii_code.push(value.chr)
    end
    ascii_code.join('')
  end
end



c = Cipher.new
puts c.cipher('What a String!', 5)
puts c.cipher('What a String!', 5) == "Bmfy f Xywnsl!" ? "true" : "false"