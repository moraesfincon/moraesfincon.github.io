class Product < ApplicationRecord
	validates_presence_of :name, :descrption, :image
end
