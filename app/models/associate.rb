class Associate < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "64x64>" }
end
