require "sinatra"
require "sinatra/reloader" if development?

get "/" do
    @title = "Tim Regan-Porter's Portfolio"
    erb :home, :layout => :layout_example
end
