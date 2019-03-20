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


def first_wa(array)
  array.each {|word| if word[0..1] == "wa" then return word end}
end

def remove_non_strings(array)

  new_array = []
  array.each {|word| if word.class == String then new_array << word end}
  new_array

end

=begin
Why can it not be like this?

def remove_non_strings(array)
  array.each do |word|
    binding.pry
    if word.class != String
      array.delete(word)
    end
  end
end

=end

def count_elements(array)

end
