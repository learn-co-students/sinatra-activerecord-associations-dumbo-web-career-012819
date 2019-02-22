require_relative 'config/environment'

class App < Sinatra::Base

  get '/cats/new' do
    #erb :new
  end

  post '/cats' do
    @cat = Cat.create(params[:cat])
    #redirect "/cats/#{@cat.id}"
  end

  get '/cats' do
    #erb :index
  end

  get '/cats/:id' do
    @cat = Cat.find(params[:id])
    #erb :show
  end

  get '/cats/:id/edit' do
    @cat = Cat.find(params[:id])
    #erb :edit
  end

  patch '/cats/:id' do
    @cat = Cat.find(params[:id])
    @cat.update(params[:cat])
    #redirect "/cats/#{@cat.id}"
  end

  delete '/cats/:id' do
    @cat = Cat.find(params[:id])
    @cat.delete
    #redirect '/cats'
  end

end
