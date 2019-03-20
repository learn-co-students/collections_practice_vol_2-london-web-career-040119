require 'pry'

def begins_with_r(array)

  array.each {|word| if word[0] != "r" then return false end}
  true

end

def contain_a(array)

  words_with_a = []
  array.each {|word| if word.split("").include?("a") then words_with_a << word end}
  words_with_a

end
