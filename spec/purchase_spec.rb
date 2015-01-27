require('spec_helper')

describe(Purchase) do
  it('will add products into the purchase') do
    purchase1 = Purchase.create({:total => nil})
    product1 = Product.create({:name => "Basic 4", :price => "3.99", :bought? => false, :purchase_id => purchase1.id})
    product2 = Product.create({:name => "almond milk", :price => "1.99", :bought? => false, :purchase_id => purchase1.id})
    expect(purchase1.products()).to(eq([product1, product2]))
  end
end
