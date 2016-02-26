class AddDetailsToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :cost, :integer
    add_column :foods, :image, :string
  end
end
