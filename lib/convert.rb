# -*- encoding : utf-8 -*-
class Converter
  def self.convert_letter(letter)
    case letter
    when "a", "b", "c"      then 2
    when "d", "e", "f"      then 3
    when "g", "h", "i"      then 4
    when "j", "k", "l"      then 5
    when "m", "n", "o"      then 6
    when "p", "q", "r", "s" then 7
    when "t", "u", "v"      then 8
    when "w", "x", "y", "z" then 9
    else letter
    end
  end

  def self.convert_word(word)
    number = ""
    word.each_char do |letter|
      number += convert_letter(letter).to_s
    end
    "#{number}"
  end

  def self.convert_words(words)
    result = ""
    words.each do | word |
      result += "#{Converter.convert_word(word)} "
    end
    result
  end
end

if __FILE__ == $0
  puts "Your Arguments: #{ARGV}"
  result = Converter.convert_words(ARGV)
  puts "result: #{result}"
end
