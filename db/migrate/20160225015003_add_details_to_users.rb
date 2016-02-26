class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :faculity, :string
    add_column :users, :year, :integer
    add_column :users, :sex, :string
    add_column :users, :comment, :text
    add_column :users, :place, :string
    add_column :users, :image, :string
  end
end
