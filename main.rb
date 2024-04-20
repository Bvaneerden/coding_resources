require 'sinatra'
require 'pry'
require 'bcrypt'
require 'pg'
puts 'meow'
enable :sessions

puts 'meow'

require './db/db'

require './models/resource'
require './models/user'

require './controllers/resources'
require './controllers/sessions'
require './controllers/users'
require './helpers/sessions_helper'

get '/' do
  erb :index
end





