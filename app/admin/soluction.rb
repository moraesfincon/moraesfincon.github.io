ActiveAdmin.register Soluction do
  permit_params :name, :resume, :image, :order

  index do
    selectable_column
    id_column
    column :order
    column :name
    column "Image" do |soluction|
      image_tag(soluction.image.url(:mini_thumb))
    end
    actions
  end 

  form do |f|
    f.inputs do
      f.input :name
      f.input :order
      f.input :image
      f.input :resume, :as => :ckeditor

    end
    f.actions
  end

  filter :name

end 