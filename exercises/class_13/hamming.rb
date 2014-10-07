# Ask the user for DNA strand representations
def get_strands
  strands = Array.new
  puts "Enter the first strand"
  strands.push gets.chomp
  puts "Enter the second strand"
  strands.push gets.chomp
  strands
end

# Calculate the hamming difference
def hamming(strands)
  hamming = 0 # running total
  # Split the string in to a character array
  # You can actually get around these variables, with each_char &/or string[i] (which you haven't learned yet).
  char_1 = strands[0].split('') 
  char_2 = strands[1].split('')
  
  # Method 1
  # for (i = 0, i < strands[0].length, i+=1)
     # if char_1[i] != char_2[i]
        # hamming += 1
    #end
  #end

  # Method 2
  # You can get around the index variable by using each_with_index and string[i]. 
  index = 0 # to keep track of where we are
  char_1.each do |c|
    # if the character in a position doesn't match the character in the equivalent position in the other string, add 1
    if c != char_2[index]
      hamming += 1
    end
    # increment the index for the next run
    index += 1
  end
  hamming # return the total
end

# Get the strands from the user
strands = get_strands
# Calculate the hamming difference
hamming = hamming strands

# Print the answer for the user
puts "The hamming difference is #{hamming}."