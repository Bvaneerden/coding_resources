get '/login' do
  erb :'sessions/new'
end

post '/sessions' do
  email = params['email']
  password = params['password']

  user = find_user_by_email(email)

  puts BCrypt::Password.new(user['password_digest'])

  puts password

  if user && BCrypt::Password.new(user['password_digest']) == password
    # log user in
    session['user_id'] = user['id']
    redirect '/'
  else
    redirect '/not_found'
  end
end

delete '/sessions' do
  session['user_id'] = nil

  redirect '/'
end