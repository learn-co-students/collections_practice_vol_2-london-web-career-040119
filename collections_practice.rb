require "pry"

def begins_with_r (tools_array)
  tools_array.all? { |x| x[0] == "r" }    
end

def contain_a (tools_array)
  tools_array.select { |x| x.include? "a" }
end

def first_wa (tools_array)
  tools_array.find { |x| x.to_s.include? "wa" }
end

def remove_non_strings (tools_array)
  tools_array.delete_if { |x| x.class != String }
end

def count_elements (tools_array)
  array = tools_array.uniq.collect { |person| {:name => person[:name], :count => tools_array.count(person)} }
end

def merge_data (key,data)
  merged_data = []
  
#    key.each_with_index do |x, i|
#    merged_data << key[i].merge(data[0][key[i].values[0]])
#
#  end

  keys.each do |key|
    data.each do |data_hash|
      data_hash.each do |data_hash_key, data_hash_value|
        if data_hash_key == key[:first_name]
          merged_data << key.merge(data_hash_value)
        end
      end
    end
  end
  merged_data
end

def find_cool(array)
  array.select {|x| x[:temperature] == "cool"}
end

def organize_schools(schools)
  location = {}
  schools.collect {|k,v| location [v[:location]] = []}
  location.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1 end }}
end