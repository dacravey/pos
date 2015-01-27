class Product < ActiveRecord::Base
  belongs_to(:purchase)

  scope(:bought, -> do
    where({:bought? => true})
  end)
end
