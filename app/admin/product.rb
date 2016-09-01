ActiveAdmin.register Product do
	permit_params :name, :image, :descrption, :public, :main

	index do
    selectable_column
    id_column
    column :image
    column :name
    column :public
    column :main
    column :created_at
    actions
  end

  filter :name
  filter :public
  filter :created_at

end