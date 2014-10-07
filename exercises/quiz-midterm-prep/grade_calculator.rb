def get_grade
  puts "Enter a grade or type 'done'."
  grade = gets.chomp
  grade # not needed since the assignment above returns the value of grade
end

def calculate_average(grades)
  total = 0
  grades.each do |grade|
    total += grade.to_i # total = total + grade
  end
  total/grades.size
end


puts "Please enter your name:"
name = gets.chomp

grades = []
while true
    grade = get_grade
    if (grade.downcase == 'done')
        break
    end
    grades.push grade
end

average = calculate_average grades
puts "#{ name.upcase }: #{average}"