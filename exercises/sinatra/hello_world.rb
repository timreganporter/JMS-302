require 'sinatra'

get '/' do
    "Hello, world!"
end

get '/me/:name' do
    @name = params[:name]
    erb :me
end


__END__
    
@@me

<!DOCTYPE html>
<html>
    <head><title><%= @name %></title></head>
    <body>
        <h1>Hello, <%= @name %></h1>
    </body>
</html>
