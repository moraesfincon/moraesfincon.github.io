class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :image
      t.boolean :public, default: false

      t.timestamps
    end
  end
end
