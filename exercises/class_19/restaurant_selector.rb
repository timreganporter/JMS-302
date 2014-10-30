## Building on Jane Hammond's code to illustrate potential problems

file = "restaurants.txt"

food_by_user = {}

if File.exists? file
    File.open(file, 'r').each_line do |line|
        food = line.chomp.split(/\t/)
        if food_by_user[food[0]]
            food_by_user[food[0]].push food[1]
            
        food_array.push food[1]
        food_by_user[food[0]] = food_array
    end
else
    puts "#{file} doesn't exist"
    exit
end

new_food = Array.new
puts "Would you like to add to the restaurant list (#{ restaurants })? Type 'done' when done."
while true
    restaurant = gets.chomp
    if restaurant == "done"
        break
    else
        restaurants.push restaurant
        new_food.push restaurant
    end
end

puts restaurants 
    
File.open("#{file}", "a") do |f|
    new_food.each do |restaurant|
        f.write "#{ restaurant } \n"
    end
end

random_restaurant_index = rand(restaurants.size)

puts "Go to #{ restaurants[random_restaurant_index]}."