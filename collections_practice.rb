# your code goes here
def begins_with_r(arr)
  return arr.all?{|i| i[0] == "r"}
end

def contain_a(arr)
  return arr.select{|i| i.include?("a") }
end

def first_wa(arr)
  return arr.select{|a| a.class == String}.find{|i| i.chars[0]=="w" && i.chars[1]=="a"}
end

def remove_non_strings(arr)
  return arr.select{|elem| elem.class == String}
end

def count_elements(arr)
 r_arr = []
 arr2 = []
  for i in arr
    arr2.push(i)
    arr2.push(i[:count] = arr.count(i))
  end
  r_arr = arr2.uniq.select{|i| i.class != Integer}
  r_arr.slice!(1)
  return r_arr

end

def merge_data(keys,data)
  merged = {}
  new_merged = {}
  keys.zip(data).each do |k,d|
    merged[k] = d
  end
  for i in merged[1]
    if i.value == "Ashley"
      new_merged[i] == i.value
    end
  end
  for i in merged[1]
    if i.value == "Ashley"
      new_merged[i] == i.value
    end
  end




end

def find_cool(cool)
  cool.select{|i| i[:temperature] == "cool"}
end
