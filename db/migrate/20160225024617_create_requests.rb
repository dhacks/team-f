class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :seller
      t.integer :buyer
      t.boolean :status

      t.timestamps null: false
    end
  end
end
