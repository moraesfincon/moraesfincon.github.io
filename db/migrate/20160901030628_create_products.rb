class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.text :descrption
      t.boolean :public, default: false
      t.boolean :main, default: false
      t.timestamps
    end
  end
end
