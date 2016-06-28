get '/lists' do
  @lists = List.order(:name)
  erb :'lists/index'
end

get '/lists/:id' do
  @list = List.find(params[:id])
  @items = @list.items
  erb :'lists/show'
end


