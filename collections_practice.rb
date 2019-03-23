# your code goes here

def begins_with_r(array) #Return true if every element of the tools array starts with an "r" and false otherwise.
  array.all? do |word|
    word.downcase.chr == "r"
     
  end
end

def contain_a(array) # return all elements that contain the letter 'a'
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array) #Return the first element that begins with the letters 'wa'
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def non_strings(array)
  
end