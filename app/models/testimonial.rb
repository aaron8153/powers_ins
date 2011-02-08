class Testimonial < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :standard => "228x177>" }
end