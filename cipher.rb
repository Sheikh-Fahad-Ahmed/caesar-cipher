require 'pry'

def caesar_cipher(string, key)
  ascii_code = string.bytes
  ascii_code.map do |num|
    num += key
  end
  ascii_code.pack(c*)
  binding.pry
end

puts caesar_cipher("string")
