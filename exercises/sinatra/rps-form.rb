require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    erb :home
end

#get '/throw/:choice' do
post '/throw' do
    @title = "Rock, Paper, Scissors: Your Results"
    # hash of what beats what
    beats = {
        "Rock" => "Scissors",
        "Scissors" => "Paper",
        "Paper" => "Rock"
    }
    # get a random choice for the computer
    computer = beats.keys[rand(beats.keys.size)]
    player = params[:choice]
    
    if !beats.keys.include?(player.capitalize)
        halt 403, "Please choose one of the following #{ beats.keys }"
    end

    # tied
    if player.capitalize == computer
        @results = "You tied the computer. Try again."
    # player beats computer
    elsif computer == beats[player.capitalize]
        @results = "Congrats. #{ player } beats #{ computer}."
    # computer beats player
    else
        @results = "Sorry. #{ computer } beats #{ player }."
    end

    # @results = whomever won
    erb :throw
end

__END__

@@layout
<!DOCTYPE html>
<html>
    <head><title><%= @title || "Rock, Paper, Scissors" %></title></head>
    <body>
        <!-- put logo here -->
        <h1>Rock, Paper, Scissors (Form)</h1>
        <%= yield %>
    </body>
</html>
    

@@home
        <p>Enter Rock, Paper or Scissors</p>
        <form action="/throw" method="post">
            <input type="text" name="choice" />
        </form>    

@@throw

        <h2>Your results:</h2>
        <%= @results %>