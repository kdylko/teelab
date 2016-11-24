class Image < ActiveRecord::Base

	belongs_to :product
	has_attached_file :photo, :styles => { :medium => "600x600>", :thumb => "150x150>" }
	
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
	validates_attachment :photo, presence: true
	

end

