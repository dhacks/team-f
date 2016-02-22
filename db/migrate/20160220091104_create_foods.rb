class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :title
      t.string :content
      t.string :place
      t.string :date

      t.timestamps null: false
    end
  end
end
