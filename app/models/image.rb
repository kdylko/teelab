class Image < ActiveRecord::Base

	belongs_to :product
	has_attached_file :photo, :styles => { :medium => "470x627#", :thumb => "220x293#" }
	
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
	validates_attachment :photo, presence: true
	

end

