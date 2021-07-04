require 'pry'
# your code goes here
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


def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end


def merge_data(arr1, arr2)
  arr2[0].map do |name, prop_hash|
    new_prop_hash = {}
    arr1.each do |new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_prop_hash = prop_hash.merge(new_attr_hash)
      end
    end
    new_prop_hash
  end
end


def find_cool(array)
  array.select {|x| x[:temperature] == "cool"}
end


def organize_schools(schools)
  locations = {}
  schools.collect {|k,v| locations [v[:location]] = []}
  locations.each do |k,v|
    schools.each do |k1,v1|
      if k == v1[:location]
      v << k1
      end
    end
  end
end
