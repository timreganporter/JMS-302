require 'sinatra'

require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/restaurant_picker.db")

class Restaurant
    include DataMapper::Resource
    property :id, Serial
    property :name, String
    property :street, Text
    property :zip, String
    property :created_at, DateTime
end

# Perform basic sanity checks and initialize all relationships
# Call this when you've defined all your models
DataMapper.finalize

# automatically create the post table
Restaurant.auto_upgrade!