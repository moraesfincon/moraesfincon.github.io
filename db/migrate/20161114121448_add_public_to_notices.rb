class AddPublicToNotices < ActiveRecord::Migration[5.0]
  def change
    add_column :notices, :public, :boolean
  end
end
