get '/sign_up' do
  erb :'users/new'
end

post '/create_user' do
  name = params['name']
  email = params['email']
  password = params['password']
  
  user = find_user_by_email(email)

  if user == nil
      create_user(name, email, password)
      redirect '/'
  else
    redirect '/email_already_exists'
  end  
end

get '/not_found' do
  erb :'users/not_found'
end

get '/email_already_exists' do
  erb :'users/email_already_exists'
end
