def begins_with_r(array)
    r = true 
    array.each do |word|
        if word[0] != ("r")
            r = false
        end
    end
    r
end

def contain_a(array)
    new_array = []
    array.each do |word|
        if word.include?("a")
            new_array << word
        end
    end
    new_array
end

def first_wa(array)
  word = nil
  array.each do |element|
    if element.match(/wa/)
      word = element
      break
    end
  end
  word
end

def remove_non_strings(array)
    array.grep(String)
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |key|
      if key[:name] == name
        hash[:count] += 1
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
    new_array = []
    array.each do |hash, stat|
        if hash[:temperature] == "cool"
            new_array << hash
        end
    end
    new_array
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
