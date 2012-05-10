# -*- encoding : utf-8 -*-
def self.convert(letter)
  case letter
  when "a", "b", "c"      then 2
  when "d", "e", "f"      then 3
  when "g", "h", "i"      then 4
  when "j", "k", "l"      then 5
  when "m", "n", "o"      then 6
  when "p", "q", "r", "s" then 7
  when "t", "u", "v"      then 8
  when "w", "x", "y", "z" then 9
  else "?"
  end
end

def self.convert_word(word)
  number = ""
  word.each_char do |letter|
    number += convert(letter).to_s
  end
  "#{number} "
end

puts "Arguments: #{ARGV}"
result = ""
ARGV.each do|a|
  result += convert_word(a)
end
puts "result: #{result}"
