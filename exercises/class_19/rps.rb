# hash of what beats what
beats = {
    "Rock" => "Scissors",
    "Scissors" => "Paper",
    "Paper" => "Rock"
}

##puts beats
##puts "keys = #{beats.keys}"

# got a random choice for the computer
computer = beats.keys[rand(beats.keys.size)]
## puts "Computer rolls #{ beats.keys[computer] }"

# give the user instructions
puts "
Welcome to Rock, Paper, Scissors!
You will pick Rock, Paper or Scissors. 
The computer will randomly pick one of those choices.
Rock beats Scissors. Scissors beat Paper, Paper beats Rock.
Enter your choice."

player = gets.chomp

# make sure the player enters a valid choice
# TODO: add some methods so we can easily ask the user to enter again 
# (and let the game continue indefinetely)
if !beats.keys.include?(player.capitalize)
    puts "Please choose a correct choice."
    exit
end

# tied
if player.capitalize == computer
    puts "You tied the computer. Try again."
# player beats computer
elsif computer == beats[player.capitalize]
    puts "Congrats. #{ player } beats #{ computer}."
# computer beats player
else
    puts "Sorry. #{ computer } beats #{ player }."
end