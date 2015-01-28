class Product < ActiveRecord::Base
  has_and_belongs_to_many(:purchase)

  # scope(:bought, -> do
  #   where({:bought? => true})
  # end)
end
