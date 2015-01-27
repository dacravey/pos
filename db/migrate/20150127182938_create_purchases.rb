class CreatePurchases < ActiveRecord::Migration
  def change
    create_table(:purchases) do |t|
      t.column(:total, :float)

      t.timestamps
    end
    add_column(:products, :purchase_id, :integer)
    add_column(:products, :bought?, :boolean)
  end
end
