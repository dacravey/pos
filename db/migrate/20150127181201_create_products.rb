class CreateProducts < ActiveRecord::Migration
  def change
    create_table(:products) do |c|
      c.column(:name, :string)
      c.column(:price, :float)

      c.timestamps
    end
  end
end
