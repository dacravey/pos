require('spec_helper')

describe(Purchase) do
  it('will add products into the purchase') do
    product1 = Product.create({:name => "Basic 4", :price => "3.99"})
    product2 = Product.create({:name => "almond milk", :price => "1.99"})
    purchase1 = Purchase.create({:product_ids => [product1.id, product2.id]})
    expect(purchase1.products()).to(eq([product1, product2]))
  end
end
