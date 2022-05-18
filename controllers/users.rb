get '/sign_up' do
  erb :'users/new'
end

post '/create_user' do
  user_name = params['name']
  user_email = params['email']
  password = params['password']

  create_user(user_name, user_email, password)
  
  redirect '/'
  
end