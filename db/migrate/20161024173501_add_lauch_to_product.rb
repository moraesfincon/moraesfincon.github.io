class AddLauchToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :launch, :boolean, default: false
  end
end
