#Question 1 Begins_With_r
def begins_with_r
	array = ["ruby", "rspec", "rails"]
	array.each do |r|
		if r.start_with?('r')
    	  return true 
    	else 
      	return false
    	end 
	end
end

begins_with_r

#Question 2 Begins_with_a
def starts_with_a
array = ["earth", "fire", "wind", "water", "heart"]
  array.select{ |word| word.include? "a"}
end 

starts_with_a


#Question 3 first_wa

array = ["candy", :pepper, "wall", :ball, "wacky"]

def starts_with_wa(words)
  words.find { |word| word.is_a?(String) && word.start_with?('wa') }
end 

starts_with_wa(array)


#Question 4 remove non strings

array_1 = ["blake", 1, :hello]

def remove_non_strings(arr)

  arr.select do |w|
    w.class == String
  end
end

remove_non_strings(array_1)

#Question 5 
my_array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#EXPECTED RESULT {:name => "blake", :count => 2}, {:name => "ashley", :count => 1}

def getOccurances(array)
  array.group_by{|v| v[:name]}.map{|k,v| {name: k, count: v.length}}
end 

getOccurances(my_array)

#Question 7 Cool Hashes 

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end



