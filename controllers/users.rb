get '/sign_up' do
  erb :'users/new'
end

post '/create_user' do
  name = params['name']
  email = params['email']
  password = params['password']
  # user_role = "user"

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

get '/users/sei53' do
  all_sei53 = all_sei53()

  erb :'users/sei53', locals: {
  all_sei53: all_sei53
  }
end
