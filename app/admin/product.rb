ActiveAdmin.register Product do
	permit_params :name, :image, :descrption, :main, :public

	index do
    selectable_column
    id_column
    column "Image" do |product|
    	image_tag(product.image.url(:thumb))
    end
    column :name
    column :main
    column :public
    column :created_at
    actions
  end

  filter :name
  filter :public
end