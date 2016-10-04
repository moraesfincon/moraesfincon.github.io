ActiveAdmin.register Banner do
	permit_params :title, :image, :descrption, :public

	index do
    selectable_column
    id_column
    column :title
    column "Image" do |banner|
    	image_tag(banner.image.url(:thumb))
    end
    column :public
    column :created_at
    actions
  end

  filter :name
  filter :public
end
