# if each element starts with a certain letter
def begins_with_r(tools)
  tools.all? do |letter|
  letter[0] == "r"
  end
end

# return all elements with a letter in them
def contain_a(array)
  array.select do |string|
  string.include?("a")
  end
end

#return first element that begins with some letters [0,2] means first index, 2 across
def first_wa(array)
  array.detect do |string|
  string[0,2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String) }
end
#! is the bang operator and means opposite of true/false

def count_elements(array)
  # creates new hash, but base set to 0 instead of nil
  counts = Hash.new(0)
  # iterates over adding 1 to each instance of k,v pair
  array.each { |element| counts[element] += 1 }
  return_array = []
  # breaks down the k,v pair into correct formating
  counts.each do |element,num|
    element.each { |key, val| return_array << {key => val, :count => num} }
  end
  return_array
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end
    
#use select to find values
def find_cool(data)
  data.select do |item| 
    item.has_value?('cool')
  end
end

#wants you to return a hash- :location -> all schools in that location
def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, hash|
  #this lists all the geographical locations
  location = hash[:location]
  #double pipes makes it add multiple elements, without each location would have just one
  organized_schools[location] ||= []
  organized_schools[location] << name
end
organized_schools
end
