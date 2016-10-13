ActiveAdmin.register Product do

  menu false

  permit_params :name, :image, :descrption, :main, :public, :order_position

  config.sort_order = 'order_position_asc'

  index do
    selectable_column
    id_column
    column "Image" do |product|
      image_tag(product.image.url(:thumb))
    end
    column :order_position
    column :name
    column :main
    column :public
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :image
      f.input :descrption, :as => :ckeditor
      f.input :order_position
      f.input :main
      f.input :public
    end
    f.actions
  end

  filter :name
  filter :public
end
