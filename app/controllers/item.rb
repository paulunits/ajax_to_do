get '/items' do
  redirect '/lists'
end

get '/items/new' do
  erb :'items/new'
end

post '/items' do
  @item = Item.create(params[:item])
  if request.xhr?
     erb :'_new_item'
    # , layout: false
    # locals: {item: @item}
  else
    redirect '/'
  end
end

get '/items/:id' do
  @item = Item.find(params[:id])

  erb :'items/show'
end

delete '/items/:id' do
  @item = Item.find(params[:id])
if request.xhr?
  content_type :json
  { destroy: @item.destroy }.to_json
else
  redirect '/lists'
end
end
