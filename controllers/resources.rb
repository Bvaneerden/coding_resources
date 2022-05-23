require 'pry'

get '/' do
  language = "group"
  all_resources = all_resources()
  
  erb :index, locals: {
    language: language,
    all_resources: all_resources
  }
end

get '/resource/new' do
  erb :'resource/new'
end

get '/resource/problem_solving' do
  erb :'resource/problem_solving'
end



post '/resource' do
  name = params['name']
  description = params['description']
  url = params['url']
  html = params['html']
  css = params['css']
  javascript = params['javascript']
  ruby = params['ruby']
  ruby_on_rails = params['ruby_on_rails']
  postgresql = params['postgresql']
  python = params['python']

  create_resource(name, description, url, html, css, javascript, ruby, ruby_on_rails, postgresql, python)

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
  html = params['html']
  css = params['css']
  javascript = params['javascript']
  ruby = params['ruby']
  ruby_on_rails = params['ruby_on_rails']
  postgresql = params['postgresql']
  python = params['python']

  update_resource(name, description, url, html, css, javascript, ruby, ruby_on_rails, postgresql, python, id)

  redirect '/'
end

delete '/resource/:id' do
  id = params['id']

  delete_resource(id)
  
  redirect '/'
end

language_index = 0

get '/resource/sort/:language' do
  language = params['language']

  all_resources = sort_resources(language)
  erb :index, locals: {
    language: language,
    all_resources: all_resources
  }
end