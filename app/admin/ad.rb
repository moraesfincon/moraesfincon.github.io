ActiveAdmin.register Ad do

  menu false

  permit_params :title, :image, :public

  # config.sort_order = 'order_position_asc'

  index do
    selectable_column
    id_column
    column "Image" do |ad|
      image_tag(ad.image.url(:thumb))
    end
    column :title
    actions
  end

  show do
    attributes_table do
      row :title
      row :image do |ad|
        image_tag ad.image.url
      end
    end
  end

  filter :title
end
