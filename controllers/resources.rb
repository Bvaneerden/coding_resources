get '/' do
  all_resources = all_resources()
  
  erb :index, locals: {
    all_resources: all_resources
  }
end

get '/resource/new' do
  erb :'resource/new'
end

post '/resource' do
  name = params['name']
  description = params['description']
  url = params['url']
    
  create_resource(name, description, url)

  redirect '/'
end

get '/resource/:id/edit' do
  id = params['id']

  resource = get_resource(id)

  erb :'resource/edit', locals: {
    resource: resource
  }
end

put '/resource/:id' do
  id = params['id']
  name = params['name']
  description = params['description']
  url = params['url']

  update_resource(name, description, url, id)

  redirect '/'
end

delete '/resource/:id' do
  id = params['id']

  delete_resource(id)
  

  redirect '/'
end