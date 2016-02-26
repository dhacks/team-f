class RemoveImageFromFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :image, :string
  end
end
