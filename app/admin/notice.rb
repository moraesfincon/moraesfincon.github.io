ActiveAdmin.register Notice do

	menu false

  permit_params :title, :content, :public, :image

  index do
    selectable_column
    id_column
    column :title
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :image
      f.input :content, as: :ckeditor
      f.input :public
    end
    f.actions
  end


  filter :title
  filter :created_at

end
