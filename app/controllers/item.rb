get '/items' do
  redirect '/lists'
end

get '/items/new' do
  erb :'items/new'
end

post '/items' do
  @item = Item.create(params[:item])
  if @item.save
    redirect '/lists'
  else
    @errors = @item.errors.full_messages
    erb :'items/new'
  end
end

get '/items/:id' do
  @item = Item.find(params[:id])
  erb :'items/show'
end

delete '/items/:id' do
  @item = Item.find(params[:id])
  @item.destroy
  redirect '/lists'
end
