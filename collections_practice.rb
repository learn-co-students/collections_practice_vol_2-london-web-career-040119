require 'pry'
def begins_with_r(array)
  array.all? { |x| x.start_with?("r") }
end

def contain_a(array)
  array.select { |x| x.include?("a") }
end

def first_wa(array)
  array.find { |x| x[0..1] == "wa" }
end

def remove_non_strings(array)
  array.delete_if { |x| !(x.is_a? String) }
end

def count_elements(array)
  array.group_by(&:itself)
  .map{|x, y| x.merge(count: y.length)}
end

def merge_data(array_1, array_2)
  array_2[0].map do |name, data_hash|
    new_data_hash = {}
    array_1.each do |new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_data_hash = data_hash.merge(new_attr_hash)
      end
    end
    new_data_hash
  end
end

def find_cool(data)
  cool_data = []
  data.each do |x|
    if x[:temperature] == "cool"
       cool_data << x
    end
  end
  cool_data
end

def organize_schools(data)
  organized_schools = {}

  data.each do |school, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << school
    else
      organized_schools[location] = []
      organized_schools[location] << school
    end
  end

  organized_schools

end
