require('spec_helper')

describe(Product) do
  it("will tell to which purchase the product belongs") do
    product1 = Product.create({:name => 'banana', :price => 1.50})
    purchase1 = Purchase.create({:product_ids => [product1.id]})
    expect(product1.purchase()).to eq(purchase1)
  end

  # describe('.bought') do
  #   it("will tell whether a product has been purchased") do
  #     product1 = Product.create({:name => "Basic 4", :price => 14.50})
  #     product2 = Product.create({:name => "bananas", :price => 2.00})
  #     bought_items = [product1, product2]
  #     bought_product = Product.create({:name => "chocolate", :price => 10.00})
  #     expect(Product.bought()).to eq(bought_items)
  #   end
  # end
end
