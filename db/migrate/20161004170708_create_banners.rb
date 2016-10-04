class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.string :title
      t.text :description
      t.string :image
      t.boolean :public, default: false

      t.timestamps
    end
  end
end
