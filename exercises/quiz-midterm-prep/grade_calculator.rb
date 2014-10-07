# This could have even more comments. However, this code is quite readable without
# even the existing comments. It's overcommented for my tasts, but
# you should get in the habit of commenting your code. It'll help you and your reader.

# Prompt the user for a grade, get the grade and return it
def get_grade
  puts "Enter a grade or type 'done'."
  grade = gets.chomp
  grade # not needed since the assignment above returns the value of grade
end

# Calculate the grades, given an array of grades
def calculate_average(grades)
  total = 0 # running total
  grades.each do |grade|
    total += grade.to_i # total = total + grade
  end
  total/grades.size
end

# Ge5 the user's name
puts "Please enter your name:"
name = gets.chomp

# Get all grades
grades = [] # array to hold grades
while true
    grade = get_grade
    # stop if they user enters 'done'
    if (grade.downcase == 'done')
        break
    end
    # otherwise add the grade to the array
    grades.push grade
end

# Calculate the average
average = calculate_average grades
# Print the answer as instructed
puts "#{ name.upcase }: #{average}"