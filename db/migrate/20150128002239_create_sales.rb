class CreateSales < ActiveRecord::Migration
  def change
    create_table(:sales) do |t|
      t.column(:purchase_id, :integer)
      t.column(:product_id, :integer)

      t.timestamps
    end
    remove_column(:products, :bought?, :boolean)
    remove_column(:products, :purchase_id, :integer)
  end
end
