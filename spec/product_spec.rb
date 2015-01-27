require('spec_helper')

describe(Product) do
  it("will tell to which purchase the product belongs") do
    purchase1 = Purchase.create({:total => nil})
    product1 = Product.create({:name => 'banana', :price => 1.50, :bought? => false, :purchase_id => purchase1.id})
    expect(product1.purchase()).to eq(purchase1)
  end

  describe('.bought') do
    it("will tell whether a product has been purchased") do
      product1 = Product.create({:name => "Basic 4", :price => 14.50, :bought? => true})
      product2 = Product.create({:name => "bananas", :price => 2.00, :bought? => true})
      bought_items = [product1, product2]
      bought_product = Product.create({:name => "chocolate", :price => 10.00, :bought? => false})
      expect(Product.bought()).to eq(bought_items)
    end
  end
end
