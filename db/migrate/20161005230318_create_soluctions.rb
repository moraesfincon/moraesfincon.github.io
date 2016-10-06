class CreateSoluctions < ActiveRecord::Migration[5.0]
  def change
    create_table :soluctions do |t|
      t.string :name
      t.text :resume
      t.string :image
      t.integer :order

      t.timestamps
    end
  end
end
