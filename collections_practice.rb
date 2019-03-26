def begins_with_r(array)
  status = true
  array.each do |element|
  if element.start_with?("r") == false
    status = false
  end
end
status
end

def contain_a(array)
  array_containing_a = []
  array.each do |element|
    if element.include?("a")
    array_containing_a << element
  end
end
  array_containing_a
end

def first_wa(array)
  wa_elements = []
  array.each do |element|
  if element.to_s.start_with?("wa")
    wa_elements << element
  end
end
wa_elements[0]
end

def remove_non_strings(array)
  strings = []
  array.each do |element|
    if element.is_a?(String)
    strings << element
  end
end
strings
end

def find_cool(array)
  cool_elements = []
  array.each do |element|
    if element[:temperature] == "cool"
    cool_elements << element
  end
end
  cool_elements
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


def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
