require 'pry'

def begins_with_r(arr)
  arr.all? { |e| e[0] == 'r' }
end

def contain_a(arr)
  arr.select { |e| e.index('a') != nil }
end

def first_wa(arr)
  arr.find { |e| e[0..1] == 'wa' }
end

def remove_non_strings(arr)
  arr.reject { |e| !e.is_a? String }
end

def count_elements(arr)
  result = []
  arr.each do |e|
    new_element = e.clone
    new_element[:count] = arr.count(e)
    result << new_element
  end
  result.uniq
end

def merge_data(keys, data)
  data[0].collect do |key, data|
    keys.find { |e| e[:first_name] == key }.merge!(data)
  end
end

def find_cool(arr)
  arr.select { |e| e[:temperature] == "cool" }
end

def organize_schools(schools)
  result = {}
  schools.each do |school, data|
    result[data[:location]] ||= []
    result[data[:location]] << school
  end
  result
end
