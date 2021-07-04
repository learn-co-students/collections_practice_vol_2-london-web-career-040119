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

def remove_non_strings(array) #remove anything that's not a string from an array
  array.reject do |word|
    word.class != String
  end
end

def count_elements(array)
  counts = Hash.new(0)
  array.collect {|word| counts[word]+= 1}
    counts.collect do |key, value|
      key[:count] = value
    end
  counts.keys
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |name|
      name_hash.merge!(name[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select do |hash|
    if hash.has_value?("cool")
      hash
    end
  end
end

def organize_schools(array) #organizes the schools by location
  hash = {}
  array.each do |schools, locations|
    locations.each do |school, location|
      if hash[location] == nil 
        hash[location] = [schools]
        
      else
        hash[location] << schools
        
      end
    end
  end
  hash
end