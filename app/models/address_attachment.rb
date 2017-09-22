class AddressAttachment < ApplicationRecord
	mount_uploader :photos, PhotoUploader
  	belongs_to :address
  	validates_processing_of :photos
  	validate :photos_size_validation

  	private
    	def photos_size_validation
      		errors[:photos] << "Should be less than 500KB" if photos.size > 0.5.megabytes
    	end

end
