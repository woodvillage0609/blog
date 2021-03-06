class Note < ActiveRecord::Base

	validates :title, presence:true
	validates :content, presence:true
	validates :category, presence:true

	has_attached_file :photo

	validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif" ] }

	geocoded_by :address
    after_validation :geocode

    belongs_to :user
	
end
