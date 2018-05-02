require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative('./models/pizza_order.rb')


# READ all orders
get '/pizza_orders' do
  @orders = PizzaOrder.all()
  erb(:index)
end

# CREATE orders
get '/pizza_orders/new' do
  erb(:new)
end

post '/pizza_orders' do
  @order = PizzaOrder.new(params)
  @order.save()
  erb(:create)
end

# SHOW individual order
get '/pizza_orders/:id' do
  @order = PizzaOrder.find(params[:id])
  erb(:show)
end



# UPDATE existing orders


# DELETE orders