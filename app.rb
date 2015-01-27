require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**/*.rb')
require('./lib/product')
require('./lib/purchase')
require('pg')
require('pry')

get('/') do
  @products = Product.all()
  erb(:index)
end

post('/products') do
  name = params.fetch("name")
  price = params.fetch("price").to_f()
  @product = Product.create({:name => name, :price => price, :bought? => false})
  redirect('/')
end

get('/product_edit/:id') do
  @product = Product.find(params.fetch("id").to_i())
  erb(:product_edit)
end

patch('/inventory_edit') do
  name = params.fetch("name")
  @product = Product.find(params.fetch("id").to_i())
  @product.update({:name => name})
  @products = Product.all()
  erb(:index)
end

patch('/price_edit') do
  price = params.fetch("price").to_f()
  @product = Product.find(params.fetch("id").to_i())
  @product.update({:price => price})
  @products = Product.all()
  erb(:index)
end

delete('/product_delete') do
  @product = Product.find(params.fetch("id").to_i())
  @product.delete()
  @products = Product.all()
  erb(:index)
end
