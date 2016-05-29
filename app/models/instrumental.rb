class Instrumental < ActiveRecord::Base
	has_many :images

	accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true

end
