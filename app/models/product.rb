class Product < ActiveRecord::Base
#	attr_accessible :image
	has_attached_file :image, :styles => { :medium => "280x300#", :thumb => "100x100#",:large => "300x320#" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	validates :name, :presence => true
	belongs_to :category
end
